#!/bin/bash

# Запуск основного скрипта
#./my_script.sh
echo "Прувэд"


# Создание аннотации
cat <<EOF > annotations.json
{
    "dashboardUID": "rYdddlPWk",
    "panelId":77,
    "tags": ["script"],
    "text": "$(whoami)",
    "time": $(date +%s)000
}

EOF

# Отправка аннотации в Grafana
curl -X POST -H "Content-Type: application/json" -d @annotations.json http://kial1:898904ok@localhost:3000/api/annotations
