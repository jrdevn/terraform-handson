resource "aws_s3_bucket" "lifecycle" {
  bucket = "jhonatajr-lifecycle-tf"

  lifecycle {
    # create_before_destroy = true ## constroi a bucket e depois destroi o padrão do terraform é primeiro destruir depois criar
    #prevent_destroy = true ## toda vez que eu for tentar fazer um destroy com essa opção ele não vai deixar.
    ## ignore_changes = [tags] ## vai ignorar os recursos dentro do array para não ser modificado no plano
  }

  tags = {
    teste = "about lifecycle"
  }
}
