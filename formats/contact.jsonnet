(import "shared/default_format.jsonnet") + {
  document_type: "contact",
  base_path: "optional",
  routes: "optional",
  definitions: {
    details: {
      type: "object",
      additionalProperties: false,
      required: ["title", "contact_groups"],
      properties: {
        slug: {
          type: "string",
        },
        title: {
          type: "string",
        },
        description: {
          type: "string",
        },
        quick_links: {
          type: "array",
          maxItems: 3,
          items: {
            type: "object",
            additionalProperties: false,
            required: [
              "title",
              "url",
            ],
            properties: {
              title: {
                type: "string",
              },
              url: {
                type: "string",
              },
            },
          },
        },
        query_response_time: {
          type: [
            "string",
            "boolean",
          ],
        },
        contact_form_links: {
          type: "array",
          items: {
            type: "object",
            additionalProperties: false,
            properties: {
              title: {
                type: "string",
              },
              link: {
                type: "string",
              },
              description: {
                type: "string",
              },
            },
          },
        },
        contact_groups: {
          type: "array",
          items: {
            type: "object",
            additionalProperties: false,
            required: [
              "slug",
              "title"
            ],
            properties: {
              slug: {
                type: "string"
              },
              title: {
                type: "string"
              }
            }
          }
        },
        more_info_contact_form: {
          anyOf: [
            {
              type: "string",
            },
            {
              type: "null",
            },
          ],
        },
        contact_type: {
          type: "string",
        },
        feature_on_homepage: {
          type: "boolean",
        },
        email_addresses: {
          type: "array",
          items: {
            type: "object",
            additionalProperties: false,
            required: [
              "title",
              "email",
            ],
            properties: {
              title: {
                type: "string",
              },
              email: {
                type: "string",
              },
              description: {
                type: "string",
              },
            },
          },
        },
        more_info_email_address: {
          anyOf: [
            {
              type: "string",
            },
            {
              type: "null",
            },
          ],
        },
        phone_numbers: {
          type: "array",
          items: {
            type: "object",
            additionalProperties: false,
            required: [
              "title",
              "number",
            ],
            properties: {
              title: {
                type: "string",
              },
              number: {
                type: "string",
              },
              textphone: {
                type: "string",
              },
              international_phone: {
                type: "string",
              },
              fax: {
                type: "string",
              },
              description: {
                type: "string",
              },
              open_hours: {
                type: "string",
              },
              best_time_to_call: {
                type: "string",
              },
            },
          },
        },
        more_info_phone_number: {
          anyOf: [
            {
              type: "string",
            },
            {
              type: "null",
            },
          ],
        },
        post_addresses: {
          type: "array",
          items: {
            type: "object",
            additionalProperties: false,
            required: [
              "title",
              "street_address",
              "postal_code",
              "world_location",
            ],
            properties: {
              title: {
                type: "string",
              },
              street_address: {
                type: "string",
              },
              postal_code: {
                type: "string",
              },
              world_location: {
                type: "string",
              },
              locality: {
                type: "string",
              },
              region: {
                type: "string",
              },
              description: {
                type: "string",
              },
            },
          },
        },
        more_info_post_address: {
          anyOf: [
            {
              type: "string",
            },
            {
              type: "null",
            },
          ],
        },
        language: {
          type: "string",
        },
      },
    },
  },
  links: (import "shared/base_links.jsonnet") + {
    related: "",
  },
}
