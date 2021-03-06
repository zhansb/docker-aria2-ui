if [ -n "$VIRTUAL_HOST" ]; then
echo "Start aria2 with secure config"

	/usr/bin/aria2c --conf-path="/aria2/aria2.conf" \
	--enable-rpc --rpc-listen-all  \
	--rpc-certificate=/config/keys/${VIRTUAL_HOST}.crt \
	--rpc-private-key=/config/keys/${VIRTUAL_HOST}.key \
	--rpc-secret="$ARIR_RPC_SECRET" --rpc-secure
else
	echo "Start aria2 with standard mode"
	/usr/bin/aria2c --conf-path="/aria2/aria2.conf" \
	--enable-rpc --rpc-listen-all
fi
