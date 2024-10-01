#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <android-base/logging.h>
#include <android-base/properties.h>
#include <sys/_system_properties.h>

#include "property_service.h"
#include "vendor_init.h"

using android::base::GetProperty;

void property_override(char const prop[], char const value[]);

void vendor_load_properties() {
  property_override("ro.product.device", "OP5231");
  property_override("ro.product.name", "twrp_OP5231");
  property_override("ro.product.model", "OP5231");
}

void property_override(char const prop[], char const value[]) {
  prop_info *pi;

  pi = (prop_info *)__system_property_find(prop);
  if (pi)
    __system_property_update(pi, value, strlen(value));
  else
    __system_property_add(prop, strlen(prop), value, strlen(value));
}
