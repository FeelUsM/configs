# configs
my config settings

на чистом компьютере запускаем скрипт firstinit.sh
   он создает симлинки 
   linksave ~/.emacs ~/configs/_emacs.el
   linksave ~/configs/_inputrc ~/.inputrc
   (если такие файлы уже есть и они не симлинки, они переименовываются)
   а еще в .bashrc и .zshrc добавляется вызов shellrc (если его нету)

_emacs.el
    отключает противное сообщение при запуске emacs
    включает режим C-c C-v C-x кнопок

_inputrc
    настроки клавиш для bash - измененный файл из Cygwin'а

shellrc
    настройки клавиш и приветствия в zsh
    адреса ssh и svn
    добавление scripts в PATH
    RUNCPP_OPTIONS - для моего скрипта
    настройка языков
    алиасы grep ls la ll
    mycd - позволяет делать  cd +++ и cd ---
    ewd - вызов проводника - для разных систем
    (?) - где-то был вызов cygserver'а для pthreads under cygwin - но его сейчас нет

    
    