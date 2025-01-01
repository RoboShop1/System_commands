### In terraform everything is module, root-module & path-module 
### keeping the code dry, max at possible with modules. it's supports local-modules,git-based-modules.

!! module output

!! iterate the module, not the resource, is one of the best practice..

!! TF loops.

!! No direct-resource reference, so we need to use depends_on.

!! terraform execution is parallel.
### output in root module is different & output in root child is different
### output in child module act's as data-transmitters.


# Loops
=> count parameter, to loop over resources and modules 

=> for_each expressions, to loop over resources, inline blocks within a resource, and modules

=> for expressions, to loop over lists and maps

=> for string directive, to loop over lists and maps within a string

## Loops with the string directive
```
%{ for <ITEM> in <COLLECTION> }<BODY>%{ endfor }

%{ if <CONDITION> }<TRUEVAL>%{ endif }

%{ if <CONDITION> }<TRUEVAL>%{ else }<FALSEVAL>%{ endif }
```
# Example-1
```
variable "names" {
  description = "Names to render"
  type        = list(string)
  default     = ["neo", "trinity", "morpheus"]
}
output "for_directive" {
  value = "%{ for name in var.names }${name}, %{ endfor }"
}


Outputs:

for_directive = "neo, trinity, morpheus, "
```
# Example-1
```
output "for_directive_index" {
  value = "%{ for i, name in var.names }(${i}) ${name}, %{ endfor }"
}

Outputs:

for_directive_index = "(0) neo, (1) trinity, (2) morpheus, "
```

# Example
```

output "for_directive_index_if" {
  value = <<EOF
%{ for i, name in var.names }
  ${name}%{ if i < length(var.names) - 1 }, %{ endif }
%{ endfor }
EOF
}

Outputs:

for_directive_index_if = <<EOT

  neo,

  trinity,

  morpheus


EOT

# solution of white-spaces

output "for_directive_index_if_strip" {
  value = <<EOF
%{~ for i, name in var.names ~}
${name}%{ if i < length(var.names) - 1 }, %{ endif }
%{~ endfor ~}
EOF
}

```

## Loops with element access
```
  records = [aws_instance.main[count.index]["private_ip"]]
  records = [element(aws_instance.main,count.index)["private_ip"]]
  records = [aws_instance.main.*.private_ip[count.index]
```