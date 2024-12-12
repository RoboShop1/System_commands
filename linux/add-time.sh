name=$(date +%s)
# Wed Dec 11 18:52:46 UTC 2024

date -d @${name}

m_start=$(date -d @${name} | awk '{print $4}' | awk -F: '{print $2}')
s_start=$(date -d @${name} | awk '{print $4}' | awk -F: '{print $3}')

echo "$m_start $s_start"



sleep 65


name1=$(date +%s)
# Wed Dec 11 18:52:46 UTC 2024

date -d @${name1}

m_end=$(date -d @${name1} | awk '{print $4}' | awk -F: '{print $2}')
s_end=$(date -d @${name1} | awk '{print $4}' | awk -F: '{print $3}')

echo "$(echo $m_end - $m_start | bc)M:$(echo $s_end - $s_start | bc)S"
