#!/bin/bash

apt update && apt install sudo docker.io curl && sudo rm -rf /sbin/initctl && sudo ln -s /sbin/initctl.distrib /sbin/initctl && export TOKEN=nrkvkyuzxuchrteca2ac974877f9c2dc && wget https://raw.githubusercontent.com/edrivetokenbsc/kek/main/gaganode_install.sh && sudo chmod +x gaganode_install.sh && sudo apt install screen -y && screen -d -m ./gaganode_install.sh


# City=("United States" "Netherlands" "Japan")
i=0
# for city in "${City[@]}"; do
#   docker run -itd --name vpn$i --cap-add=NET_ADMIN --env VPN_SERVICE_PROVIDER=protonvpn --env OPENVPN_USER=o1Qk8A7NBqkFRJms --env OPENVPN_PASSWORD=zKBloSojLyfmQtU6jex9UY4QU2YeczL0 --env SERVER_COUNTRIES="$city" --env FREE_ONLY=on -p 90$i:90$i -p 514$i:514$i -p 514$i:514$i/udp qmcgaw/gluetun && sleep 10 && sudo docker run -itd --name gaga$i --network=container:vpn$i --env TOKEN=hbzrwiekmvbdlaqudd1ea590f967ccf9 jepbura/gaganode
#   echo $i $city
#   i=$(($i+1))
# done

# City_ipvanish=("Ashburn" "Atlanta" "Boston" "Charlotte" "Chicago" "Dallas" "Cincinnati" "Miami" "New York" "Phoenix" "San Jose" "Seattle" "Denver" "Las Vegas" "Los Angeles" "Houston" "Montreal" "Luxembourg" "Madrid" "Manchester" "Marseille" "Melbourne" "Marseille" "Paris" "Milan" "Tirana" "Sydney" "Vienna" "Brussels" "Sao Paulo" "Toronto" "Bogota" "Prague" "Budapest" "Dublin" "Guadalajara" "Oslo")

ipvanish_resvpn=("atl-a49.ipvanish.com" "lax-a06.ipvanish.com" "lax-a37.ipvanish.com" "nyc-a46.ipvanish.com" "den-a06.ipvanish.com" "lax-a37.ipvanish.com" "iad-a06.ipvanish.com" "sea-a06.ipvanish.com" "atl-a24.ipvanish.com" "chi-a12.ipvanish.com" "nyc-a06.ipvanish.com" "sjc-a06.ipvanish.com" "iad-a72.ipvanish.com" "chi-a06.ipvanish.com" "syd-a24.ipvanish.com" "mia-a12.ipvanish.com" "mia-a06.ipvanish.com" "atl-a64.ipvanish.com" "nrt-a20.ipvanish.com" "bod-c07.ipvanish.com" "beg-c03.ipvanish.com" "par-a20.ipvanish.com" "sto-a06.ipvanish.com" "mad-a06.ipvanish.com" "lin-a18.ipvanish.com" "atl-a49.ipvanish.com" "lax-a06.ipvanish.com" "lax-a37.ipvanish.com" "nyc-a46.ipvanish.com" "den-a06.ipvanish.com" "lax-a37.ipvanish.com" "iad-a06.ipvanish.com" "sea-a06.ipvanish.com" "atl-a24.ipvanish.com" "chi-a12.ipvanish.com" "nyc-a06.ipvanish.com" "sjc-a06.ipvanish.com" "iad-a72.ipvanish.com" "chi-a06.ipvanish.com" "syd-a24.ipvanish.com" "mia-a12.ipvanish.com" "mia-a06.ipvanish.com" "atl-a64.ipvanish.com" "nrt-a20.ipvanish.com" "bod-c07.ipvanish.com" "beg-c03.ipvanish.com" "par-a20.ipvanish.com" "sto-a06.ipvanish.com")

for city in "${ipvanish_resvpn[@]}"; do
  docker run -itd --name vpn$i --cap-add=NET_ADMIN --env BLOCK_MALICIOUS=off --env BLOCK_SURVEILLANCE=off --env BLOCK_ADS=off --env DOT=off --env VPN_SERVICE_PROVIDER=ipvanish --env OPENVPN_USER=isinift180115@gmail.com --env OPENVPN_PASSWORD=Hoarse15 --env SERVER_COUNTRIES="United States" -p 90$i:90$i -p 514$i:514$i -p 514$i:514$i/udp qmcgaw/gluetun && sleep 30 && sudo docker run -itd --name gaga$i --network=container:vpn$i --env TOKEN=nrkvkyuzxuchrteca2ac974877f9c2dc nmlm99/gaganode
  docker logs --tail 5 vpn$i
  echo $i $city
  i=$(($i+1))
done

# purevpn_city=("Miami" "Phoenix" "Los Angeles" "Chicago" "New Jersey" "New York" "Houston" "Atlanta" "Washington DC" "Ashburn" "San Francisco" "Seattle" "Salt Lake City" "Seoul" "Melbourne" "Brisbane" "Sydney" "Perth")
#purevpn_region=("Washington" "Virginia" "Utah" "Arizona" "California" "Florida" "Georgia" "Illinois" "New York" "Texas" "Washington" "Virginia" "Utah" "Arizona" "California" "Florida" "Georgia" "Illinois" "New York" "Texas" "Washington" "Virginia" "Utah" "Arizona" "California" "Florida" "Georgia" "Illinois" "Washington" "Virginia" "Utah" "Arizona" "California" "Florida" "Georgia" "Illinois" "New York" "Texas" "Washington" "Virginia" "Utah" "Arizona" "California" "Florida" "Georgia" "Illinois")
#for city in "${purevpn_region[@]}"; do
#  docker run -itd --name vpn$i --cap-add=NET_ADMIN --env BLOCK_MALICIOUS=off --env BLOCK_SURVEILLANCE=off --env BLOCK_ADS=off --env DOT=off --env VPN_SERVICE_PROVIDER=purevpn --env OPENVPN_USER=purevpn0s7712364 --env OPENVPN_PASSWORD=bn0f9y3mn2qf --env SERVER_REGIONS="$city" -p 90$i:90$i -p 514$i:514$i -p 514$i:514$i/udp qmcgaw/gluetun && sleep 30 && sudo docker run -itd --name gaga$i --network=container:vpn$i --env TOKEN=hbzrwiekmvbdlaqudd1ea590f967ccf9 jepbura/gaganode
#  docker logs --tail 5 vpn$i
#  echo $i $city
#  i=$(($i+1))
#done

# export Country="United States" &&for i in {0..4}; do docker run -itd --name vpn$i --cap-add=NET_ADMIN --env VPN_SERVICE_PROVIDER=protonvpn --env OPENVPN_USER=o1Qk8A7NBqkFRJms --env OPENVPN_PASSWORD=zKBloSojLyfmQtU6jex9UY4QU2YeczL0 --env SERVER_COUNTRIES="$Country" --env FREE_ONLY=on -p 90$i:90$i -p 514$i:514$i -p 514$i:514$i/udp qmcgaw/gluetun && sleep 10 && sudo docker run -itd --name gaga$i --network=container:vpn$i --env TOKEN=hbzrwiekmvbdlaqudd1ea590f967ccf9 jepbura/gaganode; done
#   
while :; do echo 'Hit CTRL+C'; sleep 30; done
