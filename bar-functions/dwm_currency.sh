#!/bin/sh

# A dwm_bar function to print the rate of CURRENCY/USD from rate.sx using rate.sx/1CURRENCY
# Creator of the project: Joe Standring <git@joestandring.com>
# Additional plugin added by Brayan de Albuquerque <brayandealbuquerque@gmail.com>
# GNU GPLv3

# Dependencies: curl

# Change the value of CURRENCY to match your currency code
dwm_currency() {
	CURRENCY=BUSD

	printf "%s" "$SEP1"
	if [ "$IDENTIFIER" = "unicode" ]; then
		printf "%.5s" "$(curl -s brl.rate.sx/1$CURRENCY)"
	else
		printf "%s %.5s" "$CURRENCY" "$(curl -s brl.rate.sx/1$CURRENCY)"
	fi
	printf "%s\n" "$SEP2"
}
dwm_currency2() {
	CURRENCY=BNB

	printf "%s" "$SEP1"
	if [ "$IDENTIFIER" = "unicode" ]; then
		printf "%.5s" "$(curl -s rate.sx/1$CURRENCY)"
	else
		printf "%s %.5s" "$CURRENCY" "$(curl -s rate.sx/1$CURRENCY)"
	fi
	printf "%s\n" "$SEP2"
}
dwm_currency3() {
	CURRENCY=XMR

	printf "%s" "$SEP1"
	if [ "$IDENTIFIER" = "unicode" ]; then
		printf "%.5s" "$(curl -s rate.sx/1$CURRENCY)"
	else
		printf "%s %.5s" "$CURRENCY" "$(curl -s rate.sx/1$CURRENCY)"
	fi
	printf "%s\n" "$SEP2"
}

dwm_currency3
dwm_currency2
