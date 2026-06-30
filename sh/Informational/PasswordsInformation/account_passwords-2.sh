# Прочитане на /etc/shadow и разделяне на полетата чрез двоеточие
sudo cat /etc/shadow | while IFS=: read -r a b c d e f g h; do
    # Проверка дали полето за максимален брой дни не е празно
    if [ -n "$e" ]; then
        echo "$a $e"
    fi
done | sort -n -k2
