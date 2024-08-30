#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

download_data() {
    if [ "$use_ngram" -eq 1 ]; then
        ynh_setup_source --dest_dir="$data_dir/ngrams/de" --source_id="ngrams-de"
        ynh_setup_source --dest_dir="$data_dir/ngrams/en" --source_id="ngrams-en"
        ynh_setup_source --dest_dir="$data_dir/ngrams/es" --source_id="ngrams-es"
        ynh_setup_source --dest_dir="$data_dir/ngrams/fr" --source_id="ngrams-fr"
        ynh_setup_source --dest_dir="$data_dir/ngrams/nl" --source_id="ngrams-nl"

        if [ "$use_untested_ngram" -eq 1 ]; then
            ynh_setup_source --dest_dir="$data_dir/ngrams/he" --source_id="ngram-he"
            ynh_setup_source --dest_dir="$data_dir/ngrams/it" --source_id="ngram-it"
            ynh_setup_source --dest_dir="$data_dir/ngrams/ru" --source_id="ngram-ru"
            ynh_setup_source --dest_dir="$data_dir/ngrams/zh" --source_id="ngram-zh"
        fi
    fi

    if [ "$use_fasttext" -eq 1 ]; then
        if [ "$use_compressed_fasttext" -eq 1 ]; then
            ynh_setup_source --dest_dir="$data_dir/fasttext" --source_id="fasttext-model-compressed"
        else
            ynh_setup_source --dest_dir="$data_dir/fasttext" --source_id="fasttext-model"
        fi
        ynh_setup_source --dest_dir="$install_dir/fasttext" --source_id="fasttext"
    fi

    if [ $use_beolingus -eq 1 ]; then
        ynh_setup_source --dest_dir="$data_dir/beolingus" --source_id="beolingus"
    fi
}

add_languagetool_config() {
    if [ "$use_ngram" -eq 1 ]; then
        language_model_config_line="languageModel=$data_dir/ngrams"
    else
        language_model_config_line=""
    fi

    if [ "$use_fasttext" -eq 1 ]; then
        if [ $use_compressed_fasttext -eq 1 ]; then
            fasttext_model_config_line="fasttextModel=$data_dir/fasttext/lid.176.ftz"
        else
            fasttext_model_config_line="fasttextModel=$data_dir/fasttext/lid.176.bin"
        fi
        fasttext_binary_config_line="fasttextBinary=$install_dir/fasttext/fasttext"
    else
        fasttext_model_config_line=""
        fasttext_binary_config_line=""
    fi

    if [ "$use_beolingus" -eq 1 ]; then
        beolingus_file_config_line="beolingusFile=$data_dir/beolingus/de-en.txt"
    else
        beolingus_file_config_line=""
    fi

    if [ ! -z "$grammalecte_server" ]; then
        grammalecte_server_config_line="grammalecteServer=$grammalecte_server/gc_text/fr"
    else
        grammalecte_server_config_line=""
    fi

    ynh_config_add --template="languagetool.conf" --destination="$install_dir/languagetool.conf"
}

compile_fasttext() {
    pushd "$install_dir/fasttext"
        chown -R "$app:$app" $install_dir/fasttext
        ynh_exec_as_app make -j "$(( $(nproc) * 3/4 ))"
        chown -R root:root $install_dir/fasttext
    popd
}
