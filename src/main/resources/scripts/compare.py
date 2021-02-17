# coding=UTF-8

def TestImages(kuva1, kuva2):
    with open(kuva1, 'rb') as f:
        content1 = f.read()
    with open(kuva2, 'rb') as f:
        content2 = f.read()
    if content1 == content2:
#        logging.warning("Kuvat täsmäävät")
        return (True)
    else:
#        logging.warning("Kuvat ovat erilaiset")
        return (False)