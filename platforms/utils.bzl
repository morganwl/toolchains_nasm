"""Platform utilities"""

visibility(["private"])

def platform_and_settings(*, name, constraint_values, **kwargs):
    native.platform(
        name = name,
        constraint_values = constraint_values,
        **kwargs
    )

    native.config_setting(
        name = "{}_constraint".format(name),
        constraint_values = constraint_values,
    )
