resource "aws_security_group" "main" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_id

  tags = merge( 
    local.common_tags,
    var.sg_tags,
    {name= "${var.project}-${var.environment}-${var.sg_name}"}
   )
}