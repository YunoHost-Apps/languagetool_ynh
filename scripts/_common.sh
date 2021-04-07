#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="default-jre build-essential"

#=================================================
# PERSONAL HELPERS
#=================================================

function download_data {
	if [ $use_ngram -eq 1 ]; then
		ynh_setup_source --dest_dir="$data_path/ngrams/de" --source_id="ngrams-de"
		ynh_setup_source --dest_dir="$data_path/ngrams/en" --source_id="ngrams-en"
		ynh_setup_source --dest_dir="$data_path/ngrams/es" --source_id="ngrams-es"
		ynh_setup_source --dest_dir="$data_path/ngrams/fr" --source_id="ngrams-fr"
		ynh_setup_source --dest_dir="$data_path/ngrams/nl" --source_id="ngrams-nl"
		
		if [ $use_untested_ngram -eq 1 ]; then
			ynh_setup_source --dest_dir="$data_path/ngrams/he" --source_id="ngram-he"
			ynh_setup_source --dest_dir="$data_path/ngrams/it" --source_id="ngram-it"
			ynh_setup_source --dest_dir="$data_path/ngrams/ru" --source_id="ngram-ru"
			ynh_setup_source --dest_dir="$data_path/ngrams/zh" --source_id="ngram-zh"
		fi
	fi

	if [ $use_word2vec -eq 1 ]; then
		ynh_setup_source --dest_dir="$data_path/word2vec/de" --source_id="word2vec-de"
		ynh_setup_source --dest_dir="$data_path/word2vec/en" --source_id="word2vec-en"
		ynh_setup_source --dest_dir="$data_path/word2vec/pt" --source_id="word2vec-pt"
	fi

	if [ $use_fasttext -eq 1 ]; then
		if [ $use_compressed_fasttext -eq 1 ]; then
			ynh_setup_source --dest_dir="$data_path/fasttext" --source_id="fasttext-model-compressed"
		else
			ynh_setup_source --dest_dir="$data_path/fasttext" --source_id="fasttext-model"
		fi
		ynh_setup_source --dest_dir="$final_path/fasttext" --source_id="fasttext"
	fi
}

function add_languagetool_config {
	if [ $use_ngram -eq 1 ]; then
		language_model_config_line="languageModel=$data_path/ngrams"
	else
		language_model_config_line=""
	fi

	if [ $use_word2vec -eq 1 ]; then
		word2vec_model_config_line="word2vecModel=$data_path/word2vec"
	else
		word2vec_model_config_line=""
	fi

	if [ $use_fasttext -eq 1 ]; then
		if [ $use_compressed_fasttext -eq 1 ]; then
			fasttext_model_config_line="fasttextModel=$data_path/fasttext/lid.176.ftz"
		else
			fasttext_model_config_line="fasttextModel=$data_path/fasttext/lid.176.bin"
		fi
		fasttext_binary_config_line="fasttextBinary=$final_path/fasttext/fasttext"
	else
		fasttext_model_config_line=""
		fasttext_binary_config_line=""
	fi

	if [ ! -z $grammalecte_server ]; then
		grammalecte_server_config_line="grammalecteServer=$grammalecte_server/gc_text/fr"
	else
		grammalecte_server_config_line=""
	fi

	ynh_add_config --template="languagetool.conf" --destination="$final_path/languagetool.conf"
}

function compile_fasttext {
	if [ $use_fasttext -eq 1 ]; then
		ynh_script_progression --message="Compiling fasttext..." --weight=15

		pushd "$final_path/fasttext" || ynh_die
			chown -R $app:$app $final_path/fasttext
			sudo -u $app make
			chown -R root:root $final_path/fasttext
		popd || ynh_die
	fi
}

function set_permissions {
	chown -R root:$app $final_path
	chmod -R g=u,g-w,o-rwx $final_path
	chown -R root:$app $data_path
	chmod -R g=u,g-w,o-rwx $data_path
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
