Add these lines to your ps profile
~~~
function init {
   if (test-path .terraform)
   {
      rm .terraform -force -recurse
   }

   terraform init
}

function plan {
   init
   terraform plan
}

function apply {
   init
   terraform apply
}
~~~
