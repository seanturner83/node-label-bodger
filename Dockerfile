FROM bitnami/kubectl:1.17
ADD bodge.sh /bodge.sh
ENTRYPOINT ["/bodge.sh"]
