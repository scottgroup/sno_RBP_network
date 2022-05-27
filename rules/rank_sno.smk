rule get_sno:
    message: "Create a list of snoRNAs from the annotation and keepy highly expressed ones."
    input:
        config["data"]["annotation"]
    output:
        config["data"]["snoRNA_list"]
    params:
        tpm = config["data"]["tpm"],
        snodb = config["data"]["snoDB"]
    shell:
        "python3 scripts/get_sno.py {input} {params.tpm} {params.snodb} {output}"