export OIDC_PASSWD=""

oidc-gen --flow=code \
         --client-id="14288680-2752-426d-935a-821691d6201f" \
         --client-secret="FAIeFM80e_bH43XWJUjaTZtOXFuqZx1hV8_MQ3gwhE9petA-P5stbiGxrNRXeY1L86AIiqtWM2-LJnGcAT1toQ" \
         --scope="profile openid storage.create:/intertwin/ storage.read:/intertwin/ storage.modify:/intertwin/ storage.stage:/intertwin/" \
         --iss=https://iam-ildg.cloud.cnaf.infn.it/ \
         --redirect-uri=http://localhost:8080 \
         --pw-env=$OIDC_PASSWD \
         ildg

