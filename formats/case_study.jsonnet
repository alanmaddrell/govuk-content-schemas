(import "shared/default_format.jsonnet") + {
  document_type: "case_study",
  definitions: (import "shared/definitions/_whitehall.jsonnet") + {
    details: {
      type: "object",
      additionalProperties: false,
      required: [
        "body",
        "first_public_at",
      ],
      properties: {
        body: {
          "$ref": "#/definitions/body",
        },
        image: {
          "$ref": "#/definitions/image",
        },
        format_display_type: {
          type: "string",
          enum: [
            "case_study",
          ],
        },
        first_public_at: {
          "$ref": "#/definitions/first_public_at",
        },
        change_history: {
          "$ref": "#/definitions/change_history",
        },
        tags: {
          "$ref": "#/definitions/tags",
        },
        archive_notice: {
          type: "object",
          additionalProperties: false,
          properties: {
            explanation: {
              type: "string",
            },
            archived_at: {
              format: "date-time",
            },
          },
        },
        emphasised_organisations: {
          "$ref": "#/definitions/emphasised_organisations",
        },
      },
    },
  },
  links: (import "shared/base_links.jsonnet") + {
    related_policies: "",
    world_locations: "",
    worldwide_organisations: "",
  },
}
