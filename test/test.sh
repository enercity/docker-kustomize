 #!/bin/bash

#ENVIRONMENT="dev_1.20.1"
#XENVIRONMENT="stage_v1.20.1"
#ENVIRONMENT="prod_1.20.1"
#ENVIRONMENT="v1.20"
#ENVIRONMENT="v1.20rc"
#ENVIRONMENT="v1.20-rc"
#ENVIRONMENT="dev,stage,prod"
#ENVIRONMENT="v1.20-rc,v1.1"
#ENVIRONMENT=v1.10.0-rc-ed4ftr_7358
#ENVIRONMENT=v1.10.0-ed4ftr_7358
#ENVIRONMENT=v1.10.0-11
#ENVIRONMENT=v1.10.0-sdasde11
#ENVIRONMENT=v1.10.0-dev
#ENVIRONMENT=v1.10.0-ed4ftr_7358
#ENVIRONMENT=dev_v1.0.1-rc11


#Syntax:
#./kustomize-lqt {SERVICE} {SERVICE_TYPE} {ENVIRONMENT} {TAG}
export DRONE_COMMIT_SHA=123456789
export DRONE_COMMIT_SHA=3682b1ca4e5c9eb44c7d4e78d3e52fb5d1dcd154

echo ""
echo ""
ENVIRONMENT=v1.0.1+luchshausen
echo "TEST ######## 1 ####### $ENVIRONMENT"
../kustomize-lqt sample k8s $ENVIRONMENT $ENVIRONMENT dry

echo ""
echo ""
ENVIRONMENT="v1.20"
echo "TEST ######## 2 ####### $ENVIRONMENT"
../kustomize-lqt sample k8s $ENVIRONMENT $ENVIRONMENT dry

echo ""
echo ""
ENVIRONMENT="v1.20rc"
echo "NEGATIVE TEST ######## 2 ####### $ENVIRONMENT"
../kustomize-lqt sample k8s $ENVIRONMENT $ENVIRONMENT dry

echo ""
echo ""
ENVIRONMENT="v1.20-rc"
echo "TEST ######## 2 ####### $ENVIRONMENT"
../kustomize-lqt sample k8s $ENVIRONMENT $ENVIRONMENT dry
