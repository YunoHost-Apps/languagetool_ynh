#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
#REMOVEME? pkg_dependencies="default-jre build-essential"

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

	if [ $use_fasttext -eq 1 ]; then
		if [ $use_compressed_fasttext -eq 1 ]; then
			ynh_setup_source --dest_dir="$data_path/fasttext" --source_id="fasttext-model-compressed"
		else
			ynh_setup_source --dest_dir="$data_path/fasttext" --source_id="fasttext-model"
		fi
		ynh_setup_source --dest_dir="$install_dir/fasttext" --source_id="fasttext"
	fi

	if [ $use_beolingus -eq 1 ]; then
		ynh_setup_source --dest_dir="$data_path/beolingus" --source_id="beolingus"
	fi
}

function add_languagetool_config {
	if [ $use_ngram -eq 1 ]; then
		language_model_config_line="languageModel=$data_path/ngrams"
	else
		language_model_config_line=""
	fi

	if [ $use_fasttext -eq 1 ]; then
		if [ $use_compressed_fasttext -eq 1 ]; then
			fasttext_model_config_line="fasttextModel=$data_path/fasttext/lid.176.ftz"
		else
			fasttext_model_config_line="fasttextModel=$data_path/fasttext/lid.176.bin"
		fi
		fasttext_binary_config_line="fasttextBinary=$install_dir/fasttext/fasttext"
	else
		fasttext_model_config_line=""
		fasttext_binary_config_line=""
	fi

	if [ $use_beolingus -eq 1 ]; then
		beolingus_file_config_line="beolingusFile=$data_path/beolingus/de-en.txt"
	else
		beolingus_file_config_line=""
	fi

	if [ ! -z $grammalecte_server ]; then
		grammalecte_server_config_line="grammalecteServer=$grammalecte_server/gc_text/fr"
	else
		grammalecte_server_config_line=""
	fi

	ynh_add_config --template="languagetool.conf" --destination="$install_dir/languagetool.conf"
}

function compile_fasttext {
	if [ $use_fasttext -eq 1 ]; then
		ynh_script_progression --message="Compiling fasttext..." --weight=15

		pushd "$install_dir/fasttext" || ynh_die
		chown -R $app:$app $install_dir/fasttext
		sudo -u $app make
		chown -R root:root $install_dir/fasttext
		popd || ynh_die
	fi
}

function set_permissions {
	chown -R root:$app $install_dir
	chmod -R g=u,g-w,o-rwx $install_dir
	chown -R root:$app $data_path
	chmod -R g=u,g-w,o-rwx $data_path
}

function load_installation_settings {
#REMOVEME? 	app=$YNH_APP_INSTANCE_NAME

#REMOVEME? 	domain=$(ynh_app_setting_get --app=$app --key=domain)
#REMOVEME? 	path=$(ynh_app_setting_get --app=$app --key=path)
#REMOVEME? #REMOVEME? 	install_dir=$(ynh_app_setting_get --app=$app --key=install_dir)
#REMOVEME? 	data_path=$(ynh_app_setting_get --app=$app --key=data_path)
#REMOVEME? 	use_ngram=$(ynh_app_setting_get --app=$app --key=use_ngram)
#REMOVEME? 	use_untested_ngram=$(ynh_app_setting_get --app=$app --key=use_untested_ngram)
#REMOVEME? 	use_fasttext=$(ynh_app_setting_get --app=$app --key=use_fasttext)
#REMOVEME? 	use_compressed_fasttext=$(ynh_app_setting_get --app=$app --key=use_compressed_fasttext)
#REMOVEME? 	use_beolingus=$(ynh_app_setting_get --app=$app --key=use_beolingus)
#REMOVEME? 	grammalecte_server=$(ynh_app_setting_get --app=$app --key=grammalecte_server)
#REMOVEME? 	port=$(ynh_app_setting_get --app=$app --key=port)
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
