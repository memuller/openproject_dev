--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.webhooks_projects DROP CONSTRAINT fk_rails_e978b5e3d7;
ALTER TABLE ONLY public.webhooks_projects DROP CONSTRAINT fk_rails_d7ea5de5b8;
ALTER TABLE ONLY public.webhooks_events DROP CONSTRAINT fk_rails_a166925c91;
ALTER TABLE ONLY public.webhooks_logs DROP CONSTRAINT fk_rails_551257cdac;
ALTER TABLE ONLY public.two_factor_authentication_devices DROP CONSTRAINT fk_rails_0b09e132e7;
DROP INDEX public.work_package_journal_on_burndown_attributes;
DROP INDEX public.wkfs_role_type_old_status;
DROP INDEX public.wikis_project_id;
DROP INDEX public.wiki_redirects_wiki_id_title;
DROP INDEX public.wiki_pages_wiki_id_title;
DROP INDEX public.wiki_pages_wiki_id_slug;
DROP INDEX public.wiki_contents_page_id;
DROP INDEX public.wiki_content_versions_wcid;
DROP INDEX public.watchers_user_id_type;
DROP INDEX public.versions_project_id;
DROP INDEX public.time_entries_project_id;
DROP INDEX public.time_entries_issue_id;
DROP INDEX public.projects_types_unique;
DROP INDEX public.projects_types_project_id;
DROP INDEX public.news_project_id;
DROP INDEX public.messages_parent_id;
DROP INDEX public.messages_board_id;
DROP INDEX public.issue_categories_project_id;
DROP INDEX public.index_workflows_on_role_id;
DROP INDEX public.index_workflows_on_old_status_id;
DROP INDEX public.index_workflows_on_new_status_id;
DROP INDEX public.index_work_packages_on_updated_at;
DROP INDEX public.index_work_packages_on_type_id;
DROP INDEX public.index_work_packages_on_status_id;
DROP INDEX public.index_work_packages_on_responsible_id;
DROP INDEX public.index_work_packages_on_project_id_and_updated_at;
DROP INDEX public.index_work_packages_on_project_id;
DROP INDEX public.index_work_packages_on_fixed_version_id;
DROP INDEX public.index_work_packages_on_created_at;
DROP INDEX public.index_work_packages_on_category_id;
DROP INDEX public.index_work_packages_on_author_id;
DROP INDEX public.index_work_packages_on_assigned_to_id;
DROP INDEX public.index_work_package_journals_on_journal_id;
DROP INDEX public.index_wiki_redirects_on_wiki_id;
DROP INDEX public.index_wiki_pages_on_wiki_id;
DROP INDEX public.index_wiki_pages_on_parent_id;
DROP INDEX public.index_wiki_contents_on_page_id_and_updated_on;
DROP INDEX public.index_wiki_contents_on_author_id;
DROP INDEX public.index_wiki_content_versions_on_updated_on;
DROP INDEX public.index_wiki_content_journals_on_journal_id;
DROP INDEX public.index_webhooks_projects_on_webhooks_webhook_id;
DROP INDEX public.index_webhooks_projects_on_project_id;
DROP INDEX public.index_webhooks_logs_on_webhooks_webhook_id;
DROP INDEX public.index_webhooks_events_on_webhooks_webhook_id;
DROP INDEX public.index_watchers_on_watchable_id_and_watchable_type;
DROP INDEX public.index_watchers_on_user_id;
DROP INDEX public.index_versions_on_sharing;
DROP INDEX public.index_version_settings_on_project_id_and_version_id;
DROP INDEX public.index_users_on_type_and_status;
DROP INDEX public.index_users_on_type_and_login;
DROP INDEX public.index_users_on_type;
DROP INDEX public.index_users_on_id_and_type;
DROP INDEX public.index_users_on_auth_source_id;
DROP INDEX public.index_user_preferences_on_user_id;
DROP INDEX public.index_user_passwords_on_user_id;
DROP INDEX public.index_types_on_color_id;
DROP INDEX public.index_two_factor_authentication_devices_on_user_id;
DROP INDEX public.index_tokens_on_user_id;
DROP INDEX public.index_timelines_on_project_id;
DROP INDEX public.index_time_entry_journals_on_journal_id;
DROP INDEX public.index_time_entries_on_user_id;
DROP INDEX public.index_time_entries_on_project_id_and_updated_on;
DROP INDEX public.index_time_entries_on_created_on;
DROP INDEX public.index_time_entries_on_activity_id;
DROP INDEX public.index_statuses_on_position;
DROP INDEX public.index_statuses_on_is_default;
DROP INDEX public.index_statuses_on_is_closed;
DROP INDEX public.index_settings_on_name;
DROP INDEX public.index_sessions_on_updated_at;
DROP INDEX public.index_sessions_on_session_id;
DROP INDEX public.index_role_permissions_on_role_id;
DROP INDEX public.index_repositories_on_project_id;
DROP INDEX public.index_reportings_on_reporting_to_project_id;
DROP INDEX public.index_reportings_on_reported_project_status_id;
DROP INDEX public.index_reportings_on_project_id;
DROP INDEX public.index_relations_to_from_only_follows;
DROP INDEX public.index_relations_only_hierarchy;
DROP INDEX public.index_relations_on_type_columns;
DROP INDEX public.index_relations_on_to_id;
DROP INDEX public.index_relations_on_from_id;
DROP INDEX public.index_relations_on_count;
DROP INDEX public.index_relations_hierarchy_follows_scheduling;
DROP INDEX public.index_relations_direct_non_hierarchy;
DROP INDEX public.index_queries_on_user_id;
DROP INDEX public.index_queries_on_project_id;
DROP INDEX public.index_projects_on_work_packages_responsible_id;
DROP INDEX public.index_projects_on_rgt;
DROP INDEX public.index_projects_on_responsible_id;
DROP INDEX public.index_projects_on_project_type_id;
DROP INDEX public.index_projects_on_lft;
DROP INDEX public.index_projects_on_identifier;
DROP INDEX public.index_project_associations_on_project_b_id;
DROP INDEX public.index_project_associations_on_project_a_id;
DROP INDEX public.index_principal_roles_on_role_id;
DROP INDEX public.index_principal_roles_on_principal_id;
DROP INDEX public.index_plaintext_tokens_on_user_id;
DROP INDEX public.index_news_on_project_id_and_created_on;
DROP INDEX public.index_news_on_created_on;
DROP INDEX public.index_news_on_author_id;
DROP INDEX public.index_news_journals_on_journal_id;
DROP INDEX public.index_messages_on_last_reply_id;
DROP INDEX public.index_messages_on_created_on;
DROP INDEX public.index_messages_on_board_id_and_updated_on;
DROP INDEX public.index_messages_on_author_id;
DROP INDEX public.index_message_journals_on_journal_id;
DROP INDEX public.index_menu_items_on_parent_id;
DROP INDEX public.index_menu_items_on_navigatable_id_and_title;
DROP INDEX public.index_members_on_user_id_and_project_id;
DROP INDEX public.index_members_on_user_id;
DROP INDEX public.index_members_on_project_id;
DROP INDEX public.index_member_roles_on_role_id;
DROP INDEX public.index_member_roles_on_member_id;
DROP INDEX public.index_member_roles_on_inherited_from;
DROP INDEX public.index_meetings_on_project_id_and_updated_at;
DROP INDEX public.index_ldap_groups_synchronized_groups_on_group_id;
DROP INDEX public.index_ldap_groups_synchronized_groups_on_auth_source_id;
DROP INDEX public.index_ldap_groups_memberships_on_user_id;
DROP INDEX public.index_ldap_groups_memberships_on_group_id;
DROP INDEX public.index_journals_on_user_id;
DROP INDEX public.index_journals_on_journable_type_and_journable_id_and_version;
DROP INDEX public.index_journals_on_journable_type;
DROP INDEX public.index_journals_on_journable_id;
DROP INDEX public.index_journals_on_created_at;
DROP INDEX public.index_journals_on_activity_type;
DROP INDEX public.index_hierarchy_paths_on_work_package_id;
DROP INDEX public.index_hierarchy_paths_on_path;
DROP INDEX public.index_enumerations_on_project_id;
DROP INDEX public.index_enumerations_on_id_and_type;
DROP INDEX public.index_enabled_modules_on_name;
DROP INDEX public.index_documents_on_created_on;
DROP INDEX public.index_documents_on_category_id;
DROP INDEX public.index_design_colors_on_variable;
DROP INDEX public.index_customizable_journals_on_journal_id;
DROP INDEX public.index_customizable_journals_on_custom_field_id;
DROP INDEX public.index_custom_values_on_custom_field_id;
DROP INDEX public.index_custom_fields_projects_on_custom_field_id_and_project_id;
DROP INDEX public.index_custom_fields_on_id_and_type;
DROP INDEX public.index_cost_objects_on_project_id_and_updated_on;
DROP INDEX public.index_comments_on_commented_id_and_commented_type;
DROP INDEX public.index_comments_on_author_id;
DROP INDEX public.index_changesets_on_user_id;
DROP INDEX public.index_changesets_on_repository_id_and_committed_on;
DROP INDEX public.index_changesets_on_repository_id;
DROP INDEX public.index_changesets_on_committed_on;
DROP INDEX public.index_changeset_journals_on_journal_id;
DROP INDEX public.index_categories_on_assigned_to_id;
DROP INDEX public.index_boards_on_last_message_id;
DROP INDEX public.index_available_project_statuses_on_project_type_id;
DROP INDEX public.index_avail_project_statuses_on_rep_project_status_id;
DROP INDEX public.index_auth_sources_on_id_and_type;
DROP INDEX public.index_attachments_on_created_on;
DROP INDEX public.index_attachments_on_container_id_and_container_type;
DROP INDEX public.index_attachments_on_author_id;
DROP INDEX public.index_attachment_journals_on_journal_id;
DROP INDEX public.index_attachable_journals_on_journal_id;
DROP INDEX public.index_attachable_journals_on_attachment_id;
DROP INDEX public.index_announcements_on_show_until_and_active;
DROP INDEX public.group_user_ids;
DROP INDEX public.enabled_modules_project_id;
DROP INDEX public.documents_project_id;
DROP INDEX public.delayed_jobs_priority;
DROP INDEX public.custom_values_customized;
DROP INDEX public.custom_fields_types_unique;
DROP INDEX public.changesets_work_packages_ids;
DROP INDEX public.changesets_repos_scmid;
DROP INDEX public.changesets_repos_rev;
DROP INDEX public.changesets_changeset_id;
DROP INDEX public.boards_project_id;
ALTER TABLE ONLY public.workflows DROP CONSTRAINT workflows_pkey;
ALTER TABLE ONLY public.work_packages DROP CONSTRAINT work_packages_pkey;
ALTER TABLE ONLY public.work_package_journals DROP CONSTRAINT work_package_journals_pkey;
ALTER TABLE ONLY public.wikis DROP CONSTRAINT wikis_pkey;
ALTER TABLE ONLY public.wiki_redirects DROP CONSTRAINT wiki_redirects_pkey;
ALTER TABLE ONLY public.wiki_pages DROP CONSTRAINT wiki_pages_pkey;
ALTER TABLE ONLY public.wiki_contents DROP CONSTRAINT wiki_contents_pkey;
ALTER TABLE ONLY public.wiki_content_versions DROP CONSTRAINT wiki_content_versions_pkey;
ALTER TABLE ONLY public.wiki_content_journals DROP CONSTRAINT wiki_content_journals_pkey;
ALTER TABLE ONLY public.webhooks_webhooks DROP CONSTRAINT webhooks_webhooks_pkey;
ALTER TABLE ONLY public.webhooks_projects DROP CONSTRAINT webhooks_projects_pkey;
ALTER TABLE ONLY public.webhooks_logs DROP CONSTRAINT webhooks_logs_pkey;
ALTER TABLE ONLY public.webhooks_events DROP CONSTRAINT webhooks_events_pkey;
ALTER TABLE ONLY public.watchers DROP CONSTRAINT watchers_pkey;
ALTER TABLE ONLY public.versions DROP CONSTRAINT versions_pkey;
ALTER TABLE ONLY public.version_settings DROP CONSTRAINT version_settings_pkey;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
ALTER TABLE ONLY public.user_preferences DROP CONSTRAINT user_preferences_pkey;
ALTER TABLE ONLY public.user_passwords DROP CONSTRAINT user_passwords_pkey;
ALTER TABLE ONLY public.types DROP CONSTRAINT types_pkey;
ALTER TABLE ONLY public.two_factor_authentication_devices DROP CONSTRAINT two_factor_authentication_devices_pkey;
ALTER TABLE ONLY public.tokens DROP CONSTRAINT tokens_pkey;
ALTER TABLE ONLY public.timelines DROP CONSTRAINT timelines_pkey;
ALTER TABLE ONLY public.time_entry_journals DROP CONSTRAINT time_entry_journals_pkey;
ALTER TABLE ONLY public.time_entries DROP CONSTRAINT time_entries_pkey;
ALTER TABLE ONLY public.statuses DROP CONSTRAINT statuses_pkey;
ALTER TABLE ONLY public.settings DROP CONSTRAINT settings_pkey;
ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
ALTER TABLE ONLY public.role_permissions DROP CONSTRAINT role_permissions_pkey;
ALTER TABLE ONLY public.repositories DROP CONSTRAINT repositories_pkey;
ALTER TABLE ONLY public.reportings DROP CONSTRAINT reportings_pkey;
ALTER TABLE ONLY public.relations DROP CONSTRAINT relations_pkey;
ALTER TABLE ONLY public.rates DROP CONSTRAINT rates_pkey;
ALTER TABLE ONLY public.queries DROP CONSTRAINT queries_pkey;
ALTER TABLE ONLY public.projects DROP CONSTRAINT projects_pkey;
ALTER TABLE ONLY public.project_types DROP CONSTRAINT project_types_pkey;
ALTER TABLE ONLY public.project_associations DROP CONSTRAINT project_associations_pkey;
ALTER TABLE ONLY public.principal_roles DROP CONSTRAINT principal_roles_pkey;
ALTER TABLE ONLY public.planning_element_type_colors DROP CONSTRAINT planning_element_type_colors_pkey;
ALTER TABLE ONLY public.plaintext_tokens DROP CONSTRAINT plaintext_tokens_pkey;
ALTER TABLE ONLY public.news DROP CONSTRAINT news_pkey;
ALTER TABLE ONLY public.news_journals DROP CONSTRAINT news_journals_pkey;
ALTER TABLE ONLY public.my_projects_overviews DROP CONSTRAINT my_projects_overviews_pkey;
ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_pkey;
ALTER TABLE ONLY public.message_journals DROP CONSTRAINT message_journals_pkey;
ALTER TABLE ONLY public.menu_items DROP CONSTRAINT menu_items_pkey;
ALTER TABLE ONLY public.members DROP CONSTRAINT members_pkey;
ALTER TABLE ONLY public.member_roles DROP CONSTRAINT member_roles_pkey;
ALTER TABLE ONLY public.meetings DROP CONSTRAINT meetings_pkey;
ALTER TABLE ONLY public.meeting_participants DROP CONSTRAINT meeting_participants_pkey;
ALTER TABLE ONLY public.meeting_journals DROP CONSTRAINT meeting_journals_pkey;
ALTER TABLE ONLY public.meeting_contents DROP CONSTRAINT meeting_contents_pkey;
ALTER TABLE ONLY public.meeting_content_journals DROP CONSTRAINT meeting_content_journals_pkey;
ALTER TABLE ONLY public.material_budget_items DROP CONSTRAINT material_budget_items_pkey;
ALTER TABLE ONLY public.ldap_groups_synchronized_groups DROP CONSTRAINT ldap_groups_synchronized_groups_pkey;
ALTER TABLE ONLY public.ldap_groups_memberships DROP CONSTRAINT ldap_groups_memberships_pkey;
ALTER TABLE ONLY public.labor_budget_items DROP CONSTRAINT labor_budget_items_pkey;
ALTER TABLE ONLY public.journals DROP CONSTRAINT journals_pkey;
ALTER TABLE ONLY public.hierarchy_paths DROP CONSTRAINT hierarchy_paths_pkey;
ALTER TABLE ONLY public.export_card_configurations DROP CONSTRAINT export_card_configurations_pkey;
ALTER TABLE ONLY public.enumerations DROP CONSTRAINT enumerations_pkey;
ALTER TABLE ONLY public.enterprise_tokens DROP CONSTRAINT enterprise_tokens_pkey;
ALTER TABLE ONLY public.enabled_modules DROP CONSTRAINT enabled_modules_pkey;
ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_pkey;
ALTER TABLE ONLY public.document_journals DROP CONSTRAINT document_journals_pkey;
ALTER TABLE ONLY public.design_colors DROP CONSTRAINT design_colors_pkey;
ALTER TABLE ONLY public.delayed_jobs DROP CONSTRAINT delayed_jobs_pkey;
ALTER TABLE ONLY public.customizable_journals DROP CONSTRAINT customizable_journals_pkey;
ALTER TABLE ONLY public.custom_values DROP CONSTRAINT custom_values_pkey;
ALTER TABLE ONLY public.custom_styles DROP CONSTRAINT custom_styles_pkey;
ALTER TABLE ONLY public.custom_options DROP CONSTRAINT custom_options_pkey;
ALTER TABLE ONLY public.custom_fields DROP CONSTRAINT custom_fields_pkey;
ALTER TABLE ONLY public.cost_types DROP CONSTRAINT cost_types_pkey;
ALTER TABLE ONLY public.cost_queries DROP CONSTRAINT cost_queries_pkey;
ALTER TABLE ONLY public.cost_objects DROP CONSTRAINT cost_objects_pkey;
ALTER TABLE ONLY public.cost_object_journals DROP CONSTRAINT cost_object_journals_pkey;
ALTER TABLE ONLY public.cost_entries DROP CONSTRAINT cost_entries_pkey;
ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
ALTER TABLE ONLY public.changesets DROP CONSTRAINT changesets_pkey;
ALTER TABLE ONLY public.changeset_journals DROP CONSTRAINT changeset_journals_pkey;
ALTER TABLE ONLY public.changes DROP CONSTRAINT changes_pkey;
ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
ALTER TABLE ONLY public.boards DROP CONSTRAINT boards_pkey;
ALTER TABLE ONLY public.available_project_statuses DROP CONSTRAINT available_project_statuses_pkey;
ALTER TABLE ONLY public.auth_sources DROP CONSTRAINT auth_sources_pkey;
ALTER TABLE ONLY public.attribute_help_texts DROP CONSTRAINT attribute_help_texts_pkey;
ALTER TABLE ONLY public.attachments DROP CONSTRAINT attachments_pkey;
ALTER TABLE ONLY public.attachment_journals DROP CONSTRAINT attachment_journals_pkey;
ALTER TABLE ONLY public.attachable_journals DROP CONSTRAINT attachable_journals_pkey;
ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
ALTER TABLE ONLY public.announcements DROP CONSTRAINT announcements_pkey;
ALTER TABLE public.workflows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.work_packages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.work_package_journals ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wikis ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wiki_redirects ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wiki_pages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wiki_contents ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wiki_content_versions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wiki_content_journals ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.webhooks_webhooks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.webhooks_projects ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.webhooks_logs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.webhooks_events ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.watchers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.versions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.version_settings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.user_preferences ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.user_passwords ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.types ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.two_factor_authentication_devices ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.timelines ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.time_entry_journals ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.time_entries ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.statuses ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.settings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.sessions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.role_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.repositories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.reportings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.relations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.rates ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.queries ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.projects ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.project_types ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.project_associations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.principal_roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.planning_element_type_colors ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.plaintext_tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.news_journals ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.news ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.my_projects_overviews ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.messages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.message_journals ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.menu_items ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.members ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.member_roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.meetings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.meeting_participants ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.meeting_journals ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.meeting_contents ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.meeting_content_journals ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.material_budget_items ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.ldap_groups_synchronized_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.ldap_groups_memberships ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.labor_budget_items ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.journals ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.hierarchy_paths ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.export_card_configurations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.enumerations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.enterprise_tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.enabled_modules ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.documents ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.document_journals ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.design_colors ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.delayed_jobs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.customizable_journals ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.custom_values ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.custom_styles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.custom_options ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.custom_fields ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.cost_types ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.cost_queries ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.cost_objects ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.cost_object_journals ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.cost_entries ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.changesets ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.changeset_journals ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.changes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.boards ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.available_project_statuses ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_sources ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.attribute_help_texts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.attachments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.attachment_journals ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.attachable_journals ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.announcements ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.workflows_id_seq;
DROP TABLE public.workflows;
DROP SEQUENCE public.work_packages_id_seq;
DROP TABLE public.work_packages;
DROP SEQUENCE public.work_package_journals_id_seq;
DROP TABLE public.work_package_journals;
DROP SEQUENCE public.wikis_id_seq;
DROP TABLE public.wikis;
DROP SEQUENCE public.wiki_redirects_id_seq;
DROP TABLE public.wiki_redirects;
DROP SEQUENCE public.wiki_pages_id_seq;
DROP TABLE public.wiki_pages;
DROP SEQUENCE public.wiki_contents_id_seq;
DROP TABLE public.wiki_contents;
DROP SEQUENCE public.wiki_content_versions_id_seq;
DROP TABLE public.wiki_content_versions;
DROP SEQUENCE public.wiki_content_journals_id_seq;
DROP TABLE public.wiki_content_journals;
DROP SEQUENCE public.webhooks_webhooks_id_seq;
DROP TABLE public.webhooks_webhooks;
DROP SEQUENCE public.webhooks_projects_id_seq;
DROP TABLE public.webhooks_projects;
DROP SEQUENCE public.webhooks_logs_id_seq;
DROP TABLE public.webhooks_logs;
DROP SEQUENCE public.webhooks_events_id_seq;
DROP TABLE public.webhooks_events;
DROP SEQUENCE public.watchers_id_seq;
DROP TABLE public.watchers;
DROP SEQUENCE public.versions_id_seq;
DROP TABLE public.versions;
DROP SEQUENCE public.version_settings_id_seq;
DROP TABLE public.version_settings;
DROP SEQUENCE public.users_id_seq;
DROP TABLE public.users;
DROP SEQUENCE public.user_preferences_id_seq;
DROP TABLE public.user_preferences;
DROP SEQUENCE public.user_passwords_id_seq;
DROP TABLE public.user_passwords;
DROP SEQUENCE public.types_id_seq;
DROP TABLE public.types;
DROP SEQUENCE public.two_factor_authentication_devices_id_seq;
DROP TABLE public.two_factor_authentication_devices;
DROP SEQUENCE public.tokens_id_seq;
DROP TABLE public.tokens;
DROP SEQUENCE public.timelines_id_seq;
DROP TABLE public.timelines;
DROP SEQUENCE public.time_entry_journals_id_seq;
DROP TABLE public.time_entry_journals;
DROP SEQUENCE public.time_entries_id_seq;
DROP TABLE public.time_entries;
DROP SEQUENCE public.statuses_id_seq;
DROP TABLE public.statuses;
DROP SEQUENCE public.settings_id_seq;
DROP TABLE public.settings;
DROP SEQUENCE public.sessions_id_seq;
DROP TABLE public.sessions;
DROP TABLE public.schema_migrations;
DROP SEQUENCE public.roles_id_seq;
DROP TABLE public.roles;
DROP SEQUENCE public.role_permissions_id_seq;
DROP TABLE public.role_permissions;
DROP SEQUENCE public.repositories_id_seq;
DROP TABLE public.repositories;
DROP SEQUENCE public.reportings_id_seq;
DROP TABLE public.reportings;
DROP SEQUENCE public.relations_id_seq;
DROP TABLE public.relations;
DROP SEQUENCE public.rates_id_seq;
DROP TABLE public.rates;
DROP SEQUENCE public.queries_id_seq;
DROP TABLE public.queries;
DROP TABLE public.projects_types;
DROP SEQUENCE public.projects_id_seq;
DROP TABLE public.projects;
DROP SEQUENCE public.project_types_id_seq;
DROP TABLE public.project_types;
DROP SEQUENCE public.project_associations_id_seq;
DROP TABLE public.project_associations;
DROP SEQUENCE public.principal_roles_id_seq;
DROP TABLE public.principal_roles;
DROP SEQUENCE public.planning_element_type_colors_id_seq;
DROP TABLE public.planning_element_type_colors;
DROP SEQUENCE public.plaintext_tokens_id_seq;
DROP TABLE public.plaintext_tokens;
DROP SEQUENCE public.news_journals_id_seq;
DROP TABLE public.news_journals;
DROP SEQUENCE public.news_id_seq;
DROP TABLE public.news;
DROP SEQUENCE public.my_projects_overviews_id_seq;
DROP TABLE public.my_projects_overviews;
DROP SEQUENCE public.messages_id_seq;
DROP TABLE public.messages;
DROP SEQUENCE public.message_journals_id_seq;
DROP TABLE public.message_journals;
DROP SEQUENCE public.menu_items_id_seq;
DROP TABLE public.menu_items;
DROP SEQUENCE public.members_id_seq;
DROP TABLE public.members;
DROP SEQUENCE public.member_roles_id_seq;
DROP TABLE public.member_roles;
DROP SEQUENCE public.meetings_id_seq;
DROP TABLE public.meetings;
DROP SEQUENCE public.meeting_participants_id_seq;
DROP TABLE public.meeting_participants;
DROP SEQUENCE public.meeting_journals_id_seq;
DROP TABLE public.meeting_journals;
DROP SEQUENCE public.meeting_contents_id_seq;
DROP TABLE public.meeting_contents;
DROP SEQUENCE public.meeting_content_journals_id_seq;
DROP TABLE public.meeting_content_journals;
DROP SEQUENCE public.material_budget_items_id_seq;
DROP TABLE public.material_budget_items;
DROP SEQUENCE public.ldap_groups_synchronized_groups_id_seq;
DROP TABLE public.ldap_groups_synchronized_groups;
DROP SEQUENCE public.ldap_groups_memberships_id_seq;
DROP TABLE public.ldap_groups_memberships;
DROP SEQUENCE public.labor_budget_items_id_seq;
DROP TABLE public.labor_budget_items;
DROP SEQUENCE public.journals_id_seq;
DROP TABLE public.journals;
DROP SEQUENCE public.hierarchy_paths_id_seq;
DROP TABLE public.hierarchy_paths;
DROP TABLE public.group_users;
DROP SEQUENCE public.export_card_configurations_id_seq;
DROP TABLE public.export_card_configurations;
DROP SEQUENCE public.enumerations_id_seq;
DROP TABLE public.enumerations;
DROP SEQUENCE public.enterprise_tokens_id_seq;
DROP TABLE public.enterprise_tokens;
DROP SEQUENCE public.enabled_modules_id_seq;
DROP TABLE public.enabled_modules;
DROP TABLE public.done_statuses_for_project;
DROP SEQUENCE public.documents_id_seq;
DROP TABLE public.documents;
DROP SEQUENCE public.document_journals_id_seq;
DROP TABLE public.document_journals;
DROP SEQUENCE public.design_colors_id_seq;
DROP TABLE public.design_colors;
DROP SEQUENCE public.delayed_jobs_id_seq;
DROP TABLE public.delayed_jobs;
DROP SEQUENCE public.customizable_journals_id_seq;
DROP TABLE public.customizable_journals;
DROP SEQUENCE public.custom_values_id_seq;
DROP TABLE public.custom_values;
DROP SEQUENCE public.custom_styles_id_seq;
DROP TABLE public.custom_styles;
DROP SEQUENCE public.custom_options_id_seq;
DROP TABLE public.custom_options;
DROP TABLE public.custom_fields_types;
DROP TABLE public.custom_fields_projects;
DROP SEQUENCE public.custom_fields_id_seq;
DROP TABLE public.custom_fields;
DROP SEQUENCE public.cost_types_id_seq;
DROP TABLE public.cost_types;
DROP SEQUENCE public.cost_queries_id_seq;
DROP TABLE public.cost_queries;
DROP SEQUENCE public.cost_objects_id_seq;
DROP TABLE public.cost_objects;
DROP SEQUENCE public.cost_object_journals_id_seq;
DROP TABLE public.cost_object_journals;
DROP SEQUENCE public.cost_entries_id_seq;
DROP TABLE public.cost_entries;
DROP SEQUENCE public.comments_id_seq;
DROP TABLE public.comments;
DROP TABLE public.changesets_work_packages;
DROP SEQUENCE public.changesets_id_seq;
DROP TABLE public.changesets;
DROP SEQUENCE public.changeset_journals_id_seq;
DROP TABLE public.changeset_journals;
DROP SEQUENCE public.changes_id_seq;
DROP TABLE public.changes;
DROP SEQUENCE public.categories_id_seq;
DROP TABLE public.categories;
DROP SEQUENCE public.boards_id_seq;
DROP TABLE public.boards;
DROP SEQUENCE public.available_project_statuses_id_seq;
DROP TABLE public.available_project_statuses;
DROP SEQUENCE public.auth_sources_id_seq;
DROP TABLE public.auth_sources;
DROP SEQUENCE public.attribute_help_texts_id_seq;
DROP TABLE public.attribute_help_texts;
DROP SEQUENCE public.attachments_id_seq;
DROP TABLE public.attachments;
DROP SEQUENCE public.attachment_journals_id_seq;
DROP TABLE public.attachment_journals;
DROP SEQUENCE public.attachable_journals_id_seq;
DROP TABLE public.attachable_journals;
DROP TABLE public.ar_internal_metadata;
DROP SEQUENCE public.announcements_id_seq;
DROP TABLE public.announcements;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: announcements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.announcements (
    id integer NOT NULL,
    text text,
    show_until date,
    active boolean DEFAULT false,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.announcements OWNER TO postgres;

--
-- Name: announcements_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.announcements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcements_id_seq OWNER TO postgres;

--
-- Name: announcements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.announcements_id_seq OWNED BY public.announcements.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- Name: attachable_journals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attachable_journals (
    id integer NOT NULL,
    journal_id integer NOT NULL,
    attachment_id integer NOT NULL,
    filename character varying DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.attachable_journals OWNER TO postgres;

--
-- Name: attachable_journals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.attachable_journals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attachable_journals_id_seq OWNER TO postgres;

--
-- Name: attachable_journals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.attachable_journals_id_seq OWNED BY public.attachable_journals.id;


--
-- Name: attachment_journals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attachment_journals (
    id integer NOT NULL,
    journal_id integer NOT NULL,
    container_id integer DEFAULT 0 NOT NULL,
    container_type character varying(30) DEFAULT ''::character varying NOT NULL,
    filename character varying DEFAULT ''::character varying NOT NULL,
    disk_filename character varying DEFAULT ''::character varying NOT NULL,
    filesize integer DEFAULT 0 NOT NULL,
    content_type character varying DEFAULT ''::character varying,
    digest character varying(40) DEFAULT ''::character varying NOT NULL,
    downloads integer DEFAULT 0 NOT NULL,
    author_id integer DEFAULT 0 NOT NULL,
    description text
);


ALTER TABLE public.attachment_journals OWNER TO postgres;

--
-- Name: attachment_journals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.attachment_journals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attachment_journals_id_seq OWNER TO postgres;

--
-- Name: attachment_journals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.attachment_journals_id_seq OWNED BY public.attachment_journals.id;


--
-- Name: attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attachments (
    id integer NOT NULL,
    container_id integer DEFAULT 0 NOT NULL,
    container_type character varying(30) DEFAULT ''::character varying NOT NULL,
    filename character varying DEFAULT ''::character varying NOT NULL,
    disk_filename character varying DEFAULT ''::character varying NOT NULL,
    filesize integer DEFAULT 0 NOT NULL,
    content_type character varying DEFAULT ''::character varying,
    digest character varying(40) DEFAULT ''::character varying NOT NULL,
    downloads integer DEFAULT 0 NOT NULL,
    author_id integer DEFAULT 0 NOT NULL,
    created_on timestamp without time zone,
    description character varying,
    file character varying
);


ALTER TABLE public.attachments OWNER TO postgres;

--
-- Name: attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.attachments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attachments_id_seq OWNER TO postgres;

--
-- Name: attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.attachments_id_seq OWNED BY public.attachments.id;


--
-- Name: attribute_help_texts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attribute_help_texts (
    id integer NOT NULL,
    help_text text NOT NULL,
    type character varying NOT NULL,
    attribute_name character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.attribute_help_texts OWNER TO postgres;

--
-- Name: attribute_help_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.attribute_help_texts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attribute_help_texts_id_seq OWNER TO postgres;

--
-- Name: attribute_help_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.attribute_help_texts_id_seq OWNED BY public.attribute_help_texts.id;


--
-- Name: auth_sources; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_sources (
    id integer NOT NULL,
    type character varying(30) DEFAULT ''::character varying NOT NULL,
    name character varying(60) DEFAULT ''::character varying NOT NULL,
    host character varying(60),
    port integer,
    account character varying,
    account_password character varying DEFAULT ''::character varying,
    base_dn character varying,
    attr_login character varying(30),
    attr_firstname character varying(30),
    attr_lastname character varying(30),
    attr_mail character varying(30),
    onthefly_register boolean DEFAULT false NOT NULL,
    tls boolean DEFAULT false NOT NULL,
    attr_admin character varying
);


ALTER TABLE public.auth_sources OWNER TO postgres;

--
-- Name: auth_sources_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_sources_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_sources_id_seq OWNER TO postgres;

--
-- Name: auth_sources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_sources_id_seq OWNED BY public.auth_sources.id;


--
-- Name: available_project_statuses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.available_project_statuses (
    id integer NOT NULL,
    project_type_id integer,
    reported_project_status_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.available_project_statuses OWNER TO postgres;

--
-- Name: available_project_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.available_project_statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.available_project_statuses_id_seq OWNER TO postgres;

--
-- Name: available_project_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.available_project_statuses_id_seq OWNED BY public.available_project_statuses.id;


--
-- Name: boards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards (
    id integer NOT NULL,
    project_id integer NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    description character varying,
    "position" integer DEFAULT 1,
    topics_count integer DEFAULT 0 NOT NULL,
    messages_count integer DEFAULT 0 NOT NULL,
    last_message_id integer
);


ALTER TABLE public.boards OWNER TO postgres;

--
-- Name: boards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boards_id_seq OWNER TO postgres;

--
-- Name: boards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_id_seq OWNED BY public.boards.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    project_id integer DEFAULT 0 NOT NULL,
    name character varying(256) DEFAULT ''::character varying NOT NULL,
    assigned_to_id integer
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: changes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.changes (
    id integer NOT NULL,
    changeset_id integer NOT NULL,
    action character varying(1) DEFAULT ''::character varying NOT NULL,
    path text NOT NULL,
    from_path text,
    from_revision character varying,
    revision character varying,
    branch character varying
);


ALTER TABLE public.changes OWNER TO postgres;

--
-- Name: changes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.changes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.changes_id_seq OWNER TO postgres;

--
-- Name: changes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.changes_id_seq OWNED BY public.changes.id;


--
-- Name: changeset_journals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.changeset_journals (
    id integer NOT NULL,
    journal_id integer NOT NULL,
    repository_id integer NOT NULL,
    revision character varying NOT NULL,
    committer character varying,
    committed_on timestamp without time zone NOT NULL,
    comments text,
    commit_date date,
    scmid character varying,
    user_id integer
);


ALTER TABLE public.changeset_journals OWNER TO postgres;

--
-- Name: changeset_journals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.changeset_journals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.changeset_journals_id_seq OWNER TO postgres;

--
-- Name: changeset_journals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.changeset_journals_id_seq OWNED BY public.changeset_journals.id;


--
-- Name: changesets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.changesets (
    id integer NOT NULL,
    repository_id integer NOT NULL,
    revision character varying NOT NULL,
    committer character varying,
    committed_on timestamp without time zone NOT NULL,
    comments text,
    commit_date date,
    scmid character varying,
    user_id integer
);


ALTER TABLE public.changesets OWNER TO postgres;

--
-- Name: changesets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.changesets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.changesets_id_seq OWNER TO postgres;

--
-- Name: changesets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.changesets_id_seq OWNED BY public.changesets.id;


--
-- Name: changesets_work_packages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.changesets_work_packages (
    changeset_id integer NOT NULL,
    work_package_id integer NOT NULL
);


ALTER TABLE public.changesets_work_packages OWNER TO postgres;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comments (
    id integer NOT NULL,
    commented_type character varying(30) DEFAULT ''::character varying NOT NULL,
    commented_id integer DEFAULT 0 NOT NULL,
    author_id integer DEFAULT 0 NOT NULL,
    comments text,
    created_on timestamp without time zone NOT NULL,
    updated_on timestamp without time zone NOT NULL
);


ALTER TABLE public.comments OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: cost_entries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cost_entries (
    id integer NOT NULL,
    user_id integer NOT NULL,
    project_id integer NOT NULL,
    work_package_id integer NOT NULL,
    cost_type_id integer NOT NULL,
    units double precision NOT NULL,
    spent_on date NOT NULL,
    created_on timestamp without time zone NOT NULL,
    updated_on timestamp without time zone NOT NULL,
    comments character varying NOT NULL,
    blocked boolean DEFAULT false NOT NULL,
    overridden_costs numeric(15,4),
    costs numeric(15,4),
    rate_id integer,
    tyear integer NOT NULL,
    tmonth integer NOT NULL,
    tweek integer NOT NULL
);


ALTER TABLE public.cost_entries OWNER TO postgres;

--
-- Name: cost_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cost_entries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cost_entries_id_seq OWNER TO postgres;

--
-- Name: cost_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cost_entries_id_seq OWNED BY public.cost_entries.id;


--
-- Name: cost_object_journals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cost_object_journals (
    id integer NOT NULL,
    journal_id integer NOT NULL,
    project_id integer NOT NULL,
    author_id integer NOT NULL,
    subject character varying NOT NULL,
    description text,
    fixed_date date NOT NULL,
    created_on timestamp without time zone
);


ALTER TABLE public.cost_object_journals OWNER TO postgres;

--
-- Name: cost_object_journals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cost_object_journals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cost_object_journals_id_seq OWNER TO postgres;

--
-- Name: cost_object_journals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cost_object_journals_id_seq OWNED BY public.cost_object_journals.id;


--
-- Name: cost_objects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cost_objects (
    id integer NOT NULL,
    project_id integer NOT NULL,
    author_id integer NOT NULL,
    subject character varying NOT NULL,
    description text NOT NULL,
    type character varying NOT NULL,
    fixed_date date NOT NULL,
    created_on timestamp without time zone,
    updated_on timestamp without time zone
);


ALTER TABLE public.cost_objects OWNER TO postgres;

--
-- Name: cost_objects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cost_objects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cost_objects_id_seq OWNER TO postgres;

--
-- Name: cost_objects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cost_objects_id_seq OWNED BY public.cost_objects.id;


--
-- Name: cost_queries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cost_queries (
    id integer NOT NULL,
    user_id integer NOT NULL,
    project_id integer,
    name character varying NOT NULL,
    is_public boolean DEFAULT false NOT NULL,
    created_on timestamp without time zone NOT NULL,
    updated_on timestamp without time zone NOT NULL,
    serialized character varying(2000) NOT NULL
);


ALTER TABLE public.cost_queries OWNER TO postgres;

--
-- Name: cost_queries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cost_queries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cost_queries_id_seq OWNER TO postgres;

--
-- Name: cost_queries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cost_queries_id_seq OWNED BY public.cost_queries.id;


--
-- Name: cost_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cost_types (
    id integer NOT NULL,
    name character varying NOT NULL,
    unit character varying NOT NULL,
    unit_plural character varying NOT NULL,
    "default" boolean DEFAULT false NOT NULL,
    deleted_at timestamp without time zone
);


ALTER TABLE public.cost_types OWNER TO postgres;

--
-- Name: cost_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cost_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cost_types_id_seq OWNER TO postgres;

--
-- Name: cost_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cost_types_id_seq OWNED BY public.cost_types.id;


--
-- Name: custom_fields; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.custom_fields (
    id integer NOT NULL,
    type character varying(30) DEFAULT ''::character varying NOT NULL,
    field_format character varying(30) DEFAULT ''::character varying NOT NULL,
    regexp character varying DEFAULT ''::character varying,
    min_length integer DEFAULT 0 NOT NULL,
    max_length integer DEFAULT 0 NOT NULL,
    is_required boolean DEFAULT false NOT NULL,
    is_for_all boolean DEFAULT false NOT NULL,
    is_filter boolean DEFAULT false NOT NULL,
    "position" integer DEFAULT 1,
    searchable boolean DEFAULT false,
    editable boolean DEFAULT true,
    visible boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    multi_value boolean DEFAULT false,
    default_value text,
    name character varying
);


ALTER TABLE public.custom_fields OWNER TO postgres;

--
-- Name: custom_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.custom_fields_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.custom_fields_id_seq OWNER TO postgres;

--
-- Name: custom_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.custom_fields_id_seq OWNED BY public.custom_fields.id;


--
-- Name: custom_fields_projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.custom_fields_projects (
    custom_field_id integer DEFAULT 0 NOT NULL,
    project_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.custom_fields_projects OWNER TO postgres;

--
-- Name: custom_fields_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.custom_fields_types (
    custom_field_id integer DEFAULT 0 NOT NULL,
    type_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.custom_fields_types OWNER TO postgres;

--
-- Name: custom_options; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.custom_options (
    id integer NOT NULL,
    custom_field_id integer,
    "position" integer,
    default_value boolean,
    value text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.custom_options OWNER TO postgres;

--
-- Name: custom_options_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.custom_options_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.custom_options_id_seq OWNER TO postgres;

--
-- Name: custom_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.custom_options_id_seq OWNED BY public.custom_options.id;


--
-- Name: custom_styles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.custom_styles (
    id integer NOT NULL,
    logo character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    favicon character varying,
    touch_icon character varying
);


ALTER TABLE public.custom_styles OWNER TO postgres;

--
-- Name: custom_styles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.custom_styles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.custom_styles_id_seq OWNER TO postgres;

--
-- Name: custom_styles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.custom_styles_id_seq OWNED BY public.custom_styles.id;


--
-- Name: custom_values; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.custom_values (
    id integer NOT NULL,
    customized_type character varying(30) DEFAULT ''::character varying NOT NULL,
    customized_id integer DEFAULT 0 NOT NULL,
    custom_field_id integer DEFAULT 0 NOT NULL,
    value text
);


ALTER TABLE public.custom_values OWNER TO postgres;

--
-- Name: custom_values_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.custom_values_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.custom_values_id_seq OWNER TO postgres;

--
-- Name: custom_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.custom_values_id_seq OWNED BY public.custom_values.id;


--
-- Name: customizable_journals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customizable_journals (
    id integer NOT NULL,
    journal_id integer NOT NULL,
    custom_field_id integer NOT NULL,
    value text
);


ALTER TABLE public.customizable_journals OWNER TO postgres;

--
-- Name: customizable_journals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customizable_journals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customizable_journals_id_seq OWNER TO postgres;

--
-- Name: customizable_journals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customizable_journals_id_seq OWNED BY public.customizable_journals.id;


--
-- Name: delayed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.delayed_jobs (
    id integer NOT NULL,
    priority integer DEFAULT 0,
    attempts integer DEFAULT 0,
    handler text,
    last_error text,
    run_at timestamp without time zone,
    locked_at timestamp without time zone,
    failed_at timestamp without time zone,
    locked_by character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    queue character varying
);


ALTER TABLE public.delayed_jobs OWNER TO postgres;

--
-- Name: delayed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.delayed_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.delayed_jobs_id_seq OWNER TO postgres;

--
-- Name: delayed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.delayed_jobs_id_seq OWNED BY public.delayed_jobs.id;


--
-- Name: design_colors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.design_colors (
    id integer NOT NULL,
    variable character varying,
    hexcode character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.design_colors OWNER TO postgres;

--
-- Name: design_colors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.design_colors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.design_colors_id_seq OWNER TO postgres;

--
-- Name: design_colors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.design_colors_id_seq OWNED BY public.design_colors.id;


--
-- Name: document_journals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.document_journals (
    id integer NOT NULL,
    journal_id integer NOT NULL,
    project_id integer DEFAULT 0 NOT NULL,
    category_id integer DEFAULT 0 NOT NULL,
    title character varying(60) DEFAULT ''::character varying NOT NULL,
    description text,
    created_on timestamp without time zone
);


ALTER TABLE public.document_journals OWNER TO postgres;

--
-- Name: document_journals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.document_journals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.document_journals_id_seq OWNER TO postgres;

--
-- Name: document_journals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.document_journals_id_seq OWNED BY public.document_journals.id;


--
-- Name: documents; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.documents (
    id integer NOT NULL,
    project_id integer DEFAULT 0 NOT NULL,
    category_id integer DEFAULT 0 NOT NULL,
    title character varying(60) DEFAULT ''::character varying NOT NULL,
    description text,
    created_on timestamp without time zone
);


ALTER TABLE public.documents OWNER TO postgres;

--
-- Name: documents_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.documents_id_seq OWNER TO postgres;

--
-- Name: documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.documents_id_seq OWNED BY public.documents.id;


--
-- Name: done_statuses_for_project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.done_statuses_for_project (
    project_id integer,
    status_id integer
);


ALTER TABLE public.done_statuses_for_project OWNER TO postgres;

--
-- Name: enabled_modules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.enabled_modules (
    id integer NOT NULL,
    project_id integer,
    name character varying NOT NULL
);


ALTER TABLE public.enabled_modules OWNER TO postgres;

--
-- Name: enabled_modules_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.enabled_modules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enabled_modules_id_seq OWNER TO postgres;

--
-- Name: enabled_modules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.enabled_modules_id_seq OWNED BY public.enabled_modules.id;


--
-- Name: enterprise_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.enterprise_tokens (
    id integer NOT NULL,
    encoded_token text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.enterprise_tokens OWNER TO postgres;

--
-- Name: enterprise_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.enterprise_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enterprise_tokens_id_seq OWNER TO postgres;

--
-- Name: enterprise_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.enterprise_tokens_id_seq OWNED BY public.enterprise_tokens.id;


--
-- Name: enumerations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.enumerations (
    id integer NOT NULL,
    name character varying(30) DEFAULT ''::character varying NOT NULL,
    "position" integer DEFAULT 1,
    is_default boolean DEFAULT false NOT NULL,
    type character varying,
    active boolean DEFAULT true NOT NULL,
    project_id integer,
    parent_id integer
);


ALTER TABLE public.enumerations OWNER TO postgres;

--
-- Name: enumerations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.enumerations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enumerations_id_seq OWNER TO postgres;

--
-- Name: enumerations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.enumerations_id_seq OWNED BY public.enumerations.id;


--
-- Name: export_card_configurations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.export_card_configurations (
    id integer NOT NULL,
    name character varying,
    per_page integer,
    page_size character varying,
    orientation character varying,
    rows text,
    active boolean DEFAULT true,
    description text
);


ALTER TABLE public.export_card_configurations OWNER TO postgres;

--
-- Name: export_card_configurations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.export_card_configurations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.export_card_configurations_id_seq OWNER TO postgres;

--
-- Name: export_card_configurations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.export_card_configurations_id_seq OWNED BY public.export_card_configurations.id;


--
-- Name: group_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.group_users (
    group_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.group_users OWNER TO postgres;

--
-- Name: hierarchy_paths; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hierarchy_paths (
    id integer NOT NULL,
    work_package_id integer,
    path character varying(255) NOT NULL
);


ALTER TABLE public.hierarchy_paths OWNER TO postgres;

--
-- Name: hierarchy_paths_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hierarchy_paths_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hierarchy_paths_id_seq OWNER TO postgres;

--
-- Name: hierarchy_paths_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hierarchy_paths_id_seq OWNED BY public.hierarchy_paths.id;


--
-- Name: journals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.journals (
    id integer NOT NULL,
    journable_type character varying,
    journable_id integer,
    user_id integer DEFAULT 0 NOT NULL,
    notes text,
    created_at timestamp without time zone NOT NULL,
    version integer DEFAULT 0 NOT NULL,
    activity_type character varying
);


ALTER TABLE public.journals OWNER TO postgres;

--
-- Name: journals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.journals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.journals_id_seq OWNER TO postgres;

--
-- Name: journals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.journals_id_seq OWNED BY public.journals.id;


--
-- Name: labor_budget_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.labor_budget_items (
    id integer NOT NULL,
    cost_object_id integer NOT NULL,
    hours double precision NOT NULL,
    user_id integer,
    comments character varying DEFAULT ''::character varying NOT NULL,
    budget numeric(15,4)
);


ALTER TABLE public.labor_budget_items OWNER TO postgres;

--
-- Name: labor_budget_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.labor_budget_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.labor_budget_items_id_seq OWNER TO postgres;

--
-- Name: labor_budget_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.labor_budget_items_id_seq OWNED BY public.labor_budget_items.id;


--
-- Name: ldap_groups_memberships; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ldap_groups_memberships (
    id integer NOT NULL,
    user_id integer,
    group_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ldap_groups_memberships OWNER TO postgres;

--
-- Name: ldap_groups_memberships_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ldap_groups_memberships_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ldap_groups_memberships_id_seq OWNER TO postgres;

--
-- Name: ldap_groups_memberships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ldap_groups_memberships_id_seq OWNED BY public.ldap_groups_memberships.id;


--
-- Name: ldap_groups_synchronized_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ldap_groups_synchronized_groups (
    id integer NOT NULL,
    entry character varying,
    group_id integer,
    auth_source_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ldap_groups_synchronized_groups OWNER TO postgres;

--
-- Name: ldap_groups_synchronized_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ldap_groups_synchronized_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ldap_groups_synchronized_groups_id_seq OWNER TO postgres;

--
-- Name: ldap_groups_synchronized_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ldap_groups_synchronized_groups_id_seq OWNED BY public.ldap_groups_synchronized_groups.id;


--
-- Name: material_budget_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.material_budget_items (
    id integer NOT NULL,
    cost_object_id integer NOT NULL,
    units double precision NOT NULL,
    cost_type_id integer,
    comments character varying DEFAULT ''::character varying NOT NULL,
    budget numeric(15,4)
);


ALTER TABLE public.material_budget_items OWNER TO postgres;

--
-- Name: material_budget_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.material_budget_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.material_budget_items_id_seq OWNER TO postgres;

--
-- Name: material_budget_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.material_budget_items_id_seq OWNED BY public.material_budget_items.id;


--
-- Name: meeting_content_journals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meeting_content_journals (
    id integer NOT NULL,
    journal_id integer NOT NULL,
    meeting_id integer,
    author_id integer,
    text text,
    locked boolean
);


ALTER TABLE public.meeting_content_journals OWNER TO postgres;

--
-- Name: meeting_content_journals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.meeting_content_journals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meeting_content_journals_id_seq OWNER TO postgres;

--
-- Name: meeting_content_journals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.meeting_content_journals_id_seq OWNED BY public.meeting_content_journals.id;


--
-- Name: meeting_contents; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meeting_contents (
    id integer NOT NULL,
    type character varying,
    meeting_id integer,
    author_id integer,
    text text,
    lock_version integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    locked boolean DEFAULT false
);


ALTER TABLE public.meeting_contents OWNER TO postgres;

--
-- Name: meeting_contents_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.meeting_contents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meeting_contents_id_seq OWNER TO postgres;

--
-- Name: meeting_contents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.meeting_contents_id_seq OWNED BY public.meeting_contents.id;


--
-- Name: meeting_journals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meeting_journals (
    id integer NOT NULL,
    journal_id integer NOT NULL,
    title character varying,
    author_id integer,
    project_id integer,
    location character varying,
    start_time timestamp without time zone,
    duration double precision
);


ALTER TABLE public.meeting_journals OWNER TO postgres;

--
-- Name: meeting_journals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.meeting_journals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meeting_journals_id_seq OWNER TO postgres;

--
-- Name: meeting_journals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.meeting_journals_id_seq OWNED BY public.meeting_journals.id;


--
-- Name: meeting_participants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meeting_participants (
    id integer NOT NULL,
    user_id integer,
    meeting_id integer,
    email character varying,
    name character varying,
    invited boolean,
    attended boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.meeting_participants OWNER TO postgres;

--
-- Name: meeting_participants_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.meeting_participants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meeting_participants_id_seq OWNER TO postgres;

--
-- Name: meeting_participants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.meeting_participants_id_seq OWNED BY public.meeting_participants.id;


--
-- Name: meetings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meetings (
    id integer NOT NULL,
    title character varying,
    author_id integer,
    project_id integer,
    location character varying,
    start_time timestamp without time zone,
    duration double precision,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.meetings OWNER TO postgres;

--
-- Name: meetings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.meetings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meetings_id_seq OWNER TO postgres;

--
-- Name: meetings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.meetings_id_seq OWNED BY public.meetings.id;


--
-- Name: member_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.member_roles (
    id integer NOT NULL,
    member_id integer NOT NULL,
    role_id integer NOT NULL,
    inherited_from integer
);


ALTER TABLE public.member_roles OWNER TO postgres;

--
-- Name: member_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.member_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.member_roles_id_seq OWNER TO postgres;

--
-- Name: member_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.member_roles_id_seq OWNED BY public.member_roles.id;


--
-- Name: members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.members (
    id integer NOT NULL,
    user_id integer DEFAULT 0 NOT NULL,
    project_id integer DEFAULT 0 NOT NULL,
    created_on timestamp without time zone,
    mail_notification boolean DEFAULT false NOT NULL
);


ALTER TABLE public.members OWNER TO postgres;

--
-- Name: members_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.members_id_seq OWNER TO postgres;

--
-- Name: members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.members_id_seq OWNED BY public.members.id;


--
-- Name: menu_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.menu_items (
    id integer NOT NULL,
    name character varying,
    title character varying,
    parent_id integer,
    options text,
    navigatable_id integer,
    type character varying
);


ALTER TABLE public.menu_items OWNER TO postgres;

--
-- Name: menu_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.menu_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menu_items_id_seq OWNER TO postgres;

--
-- Name: menu_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.menu_items_id_seq OWNED BY public.menu_items.id;


--
-- Name: message_journals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.message_journals (
    id integer NOT NULL,
    journal_id integer NOT NULL,
    board_id integer NOT NULL,
    parent_id integer,
    subject character varying DEFAULT ''::character varying NOT NULL,
    content text,
    author_id integer,
    replies_count integer DEFAULT 0 NOT NULL,
    last_reply_id integer,
    locked boolean DEFAULT false,
    sticky integer DEFAULT 0
);


ALTER TABLE public.message_journals OWNER TO postgres;

--
-- Name: message_journals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.message_journals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.message_journals_id_seq OWNER TO postgres;

--
-- Name: message_journals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.message_journals_id_seq OWNED BY public.message_journals.id;


--
-- Name: messages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.messages (
    id integer NOT NULL,
    board_id integer NOT NULL,
    parent_id integer,
    subject character varying DEFAULT ''::character varying NOT NULL,
    content text,
    author_id integer,
    replies_count integer DEFAULT 0 NOT NULL,
    last_reply_id integer,
    created_on timestamp without time zone NOT NULL,
    updated_on timestamp without time zone NOT NULL,
    locked boolean DEFAULT false,
    sticky integer DEFAULT 0,
    sticked_on timestamp without time zone
);


ALTER TABLE public.messages OWNER TO postgres;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messages_id_seq OWNER TO postgres;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


--
-- Name: my_projects_overviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.my_projects_overviews (
    id integer NOT NULL,
    project_id integer DEFAULT 0 NOT NULL,
    "left" text NOT NULL,
    "right" text NOT NULL,
    top text NOT NULL,
    hidden text NOT NULL,
    created_on timestamp without time zone NOT NULL
);


ALTER TABLE public.my_projects_overviews OWNER TO postgres;

--
-- Name: my_projects_overviews_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.my_projects_overviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.my_projects_overviews_id_seq OWNER TO postgres;

--
-- Name: my_projects_overviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.my_projects_overviews_id_seq OWNED BY public.my_projects_overviews.id;


--
-- Name: news; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news (
    id integer NOT NULL,
    project_id integer,
    title character varying(60) DEFAULT ''::character varying NOT NULL,
    summary character varying DEFAULT ''::character varying,
    description text,
    author_id integer DEFAULT 0 NOT NULL,
    created_on timestamp without time zone,
    comments_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.news OWNER TO postgres;

--
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_id_seq OWNER TO postgres;

--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.news_id_seq OWNED BY public.news.id;


--
-- Name: news_journals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news_journals (
    id integer NOT NULL,
    journal_id integer NOT NULL,
    project_id integer,
    title character varying(60) DEFAULT ''::character varying NOT NULL,
    summary character varying DEFAULT ''::character varying,
    description text,
    author_id integer DEFAULT 0 NOT NULL,
    comments_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.news_journals OWNER TO postgres;

--
-- Name: news_journals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_journals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_journals_id_seq OWNER TO postgres;

--
-- Name: news_journals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.news_journals_id_seq OWNED BY public.news_journals.id;


--
-- Name: plaintext_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.plaintext_tokens (
    id integer NOT NULL,
    user_id integer DEFAULT 0 NOT NULL,
    action character varying(30) DEFAULT ''::character varying NOT NULL,
    value character varying(40) DEFAULT ''::character varying NOT NULL,
    created_on timestamp without time zone NOT NULL
);


ALTER TABLE public.plaintext_tokens OWNER TO postgres;

--
-- Name: plaintext_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.plaintext_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plaintext_tokens_id_seq OWNER TO postgres;

--
-- Name: plaintext_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.plaintext_tokens_id_seq OWNED BY public.plaintext_tokens.id;


--
-- Name: planning_element_type_colors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.planning_element_type_colors (
    id integer NOT NULL,
    name character varying NOT NULL,
    hexcode character varying NOT NULL,
    "position" integer DEFAULT 1,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.planning_element_type_colors OWNER TO postgres;

--
-- Name: planning_element_type_colors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.planning_element_type_colors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planning_element_type_colors_id_seq OWNER TO postgres;

--
-- Name: planning_element_type_colors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.planning_element_type_colors_id_seq OWNED BY public.planning_element_type_colors.id;


--
-- Name: principal_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.principal_roles (
    id integer NOT NULL,
    role_id integer NOT NULL,
    principal_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.principal_roles OWNER TO postgres;

--
-- Name: principal_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.principal_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.principal_roles_id_seq OWNER TO postgres;

--
-- Name: principal_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.principal_roles_id_seq OWNED BY public.principal_roles.id;


--
-- Name: project_associations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project_associations (
    id integer NOT NULL,
    project_a_id integer,
    project_b_id integer,
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.project_associations OWNER TO postgres;

--
-- Name: project_associations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.project_associations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_associations_id_seq OWNER TO postgres;

--
-- Name: project_associations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.project_associations_id_seq OWNED BY public.project_associations.id;


--
-- Name: project_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project_types (
    id integer NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    allows_association boolean DEFAULT true NOT NULL,
    "position" integer DEFAULT 1,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.project_types OWNER TO postgres;

--
-- Name: project_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.project_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_types_id_seq OWNER TO postgres;

--
-- Name: project_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.project_types_id_seq OWNED BY public.project_types.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects (
    id integer NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    description text,
    is_public boolean DEFAULT true NOT NULL,
    parent_id integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    identifier character varying,
    status integer DEFAULT 1 NOT NULL,
    lft integer,
    rgt integer,
    project_type_id integer,
    responsible_id integer,
    work_packages_responsible_id integer
);


ALTER TABLE public.projects OWNER TO postgres;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO postgres;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: projects_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects_types (
    project_id integer DEFAULT 0 NOT NULL,
    type_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.projects_types OWNER TO postgres;

--
-- Name: queries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.queries (
    id integer NOT NULL,
    project_id integer,
    name character varying DEFAULT ''::character varying NOT NULL,
    filters text,
    user_id integer DEFAULT 0 NOT NULL,
    is_public boolean DEFAULT false NOT NULL,
    column_names text,
    sort_criteria text,
    group_by character varying,
    display_sums boolean DEFAULT false NOT NULL,
    timeline_visible boolean DEFAULT false,
    show_hierarchies boolean DEFAULT false,
    timeline_zoom_level integer DEFAULT 0,
    timeline_labels text
);


ALTER TABLE public.queries OWNER TO postgres;

--
-- Name: queries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.queries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.queries_id_seq OWNER TO postgres;

--
-- Name: queries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.queries_id_seq OWNED BY public.queries.id;


--
-- Name: rates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rates (
    id integer NOT NULL,
    valid_from date NOT NULL,
    rate numeric(15,4) NOT NULL,
    type character varying NOT NULL,
    project_id integer,
    user_id integer,
    cost_type_id integer
);


ALTER TABLE public.rates OWNER TO postgres;

--
-- Name: rates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rates_id_seq OWNER TO postgres;

--
-- Name: rates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rates_id_seq OWNED BY public.rates.id;


--
-- Name: relations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relations (
    id integer NOT NULL,
    from_id integer NOT NULL,
    to_id integer NOT NULL,
    delay integer,
    description text,
    hierarchy integer DEFAULT 0 NOT NULL,
    relates integer DEFAULT 0 NOT NULL,
    duplicates integer DEFAULT 0 NOT NULL,
    blocks integer DEFAULT 0 NOT NULL,
    follows integer DEFAULT 0 NOT NULL,
    includes integer DEFAULT 0 NOT NULL,
    requires integer DEFAULT 0 NOT NULL,
    count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.relations OWNER TO postgres;

--
-- Name: relations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.relations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.relations_id_seq OWNER TO postgres;

--
-- Name: relations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.relations_id_seq OWNED BY public.relations.id;


--
-- Name: reportings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reportings (
    id integer NOT NULL,
    reported_project_status_comment text,
    project_id integer,
    reporting_to_project_id integer,
    reported_project_status_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.reportings OWNER TO postgres;

--
-- Name: reportings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reportings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reportings_id_seq OWNER TO postgres;

--
-- Name: reportings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reportings_id_seq OWNED BY public.reportings.id;


--
-- Name: repositories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.repositories (
    id integer NOT NULL,
    project_id integer DEFAULT 0 NOT NULL,
    url character varying DEFAULT ''::character varying NOT NULL,
    login character varying(60) DEFAULT ''::character varying,
    password character varying DEFAULT ''::character varying,
    root_url character varying DEFAULT ''::character varying,
    type character varying,
    path_encoding character varying(64),
    log_encoding character varying(64),
    scm_type character varying NOT NULL,
    required_storage_bytes bigint DEFAULT 0 NOT NULL,
    storage_updated_at timestamp without time zone
);


ALTER TABLE public.repositories OWNER TO postgres;

--
-- Name: repositories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.repositories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repositories_id_seq OWNER TO postgres;

--
-- Name: repositories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.repositories_id_seq OWNED BY public.repositories.id;


--
-- Name: role_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role_permissions (
    id integer NOT NULL,
    permission character varying,
    role_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.role_permissions OWNER TO postgres;

--
-- Name: role_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.role_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_permissions_id_seq OWNER TO postgres;

--
-- Name: role_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.role_permissions_id_seq OWNED BY public.role_permissions.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(30) DEFAULT ''::character varying NOT NULL,
    "position" integer DEFAULT 1,
    assignable boolean DEFAULT true,
    builtin integer DEFAULT 0 NOT NULL,
    type character varying(30) DEFAULT 'Role'::character varying
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    session_id character varying NOT NULL,
    data text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    user_id integer
);


ALTER TABLE public.sessions OWNER TO postgres;

--
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sessions_id_seq OWNER TO postgres;

--
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- Name: settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.settings (
    id integer NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    value text,
    updated_on timestamp without time zone
);


ALTER TABLE public.settings OWNER TO postgres;

--
-- Name: settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.settings_id_seq OWNER TO postgres;

--
-- Name: settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.settings_id_seq OWNED BY public.settings.id;


--
-- Name: statuses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.statuses (
    id integer NOT NULL,
    name character varying(30) DEFAULT ''::character varying NOT NULL,
    is_closed boolean DEFAULT false NOT NULL,
    is_default boolean DEFAULT false NOT NULL,
    "position" integer DEFAULT 1,
    default_done_ratio integer
);


ALTER TABLE public.statuses OWNER TO postgres;

--
-- Name: statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.statuses_id_seq OWNER TO postgres;

--
-- Name: statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.statuses_id_seq OWNED BY public.statuses.id;


--
-- Name: time_entries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.time_entries (
    id integer NOT NULL,
    project_id integer NOT NULL,
    user_id integer NOT NULL,
    work_package_id integer,
    hours double precision NOT NULL,
    comments character varying,
    activity_id integer NOT NULL,
    spent_on date NOT NULL,
    tyear integer NOT NULL,
    tmonth integer NOT NULL,
    tweek integer NOT NULL,
    created_on timestamp without time zone NOT NULL,
    updated_on timestamp without time zone NOT NULL,
    overridden_costs numeric(15,4),
    costs numeric(15,4),
    rate_id integer
);


ALTER TABLE public.time_entries OWNER TO postgres;

--
-- Name: time_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.time_entries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.time_entries_id_seq OWNER TO postgres;

--
-- Name: time_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.time_entries_id_seq OWNED BY public.time_entries.id;


--
-- Name: time_entry_journals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.time_entry_journals (
    id integer NOT NULL,
    journal_id integer NOT NULL,
    project_id integer NOT NULL,
    user_id integer NOT NULL,
    work_package_id integer,
    hours double precision NOT NULL,
    comments character varying,
    activity_id integer NOT NULL,
    spent_on date NOT NULL,
    tyear integer NOT NULL,
    tmonth integer NOT NULL,
    tweek integer NOT NULL,
    overridden_costs numeric(15,2),
    costs numeric(15,2),
    rate_id integer
);


ALTER TABLE public.time_entry_journals OWNER TO postgres;

--
-- Name: time_entry_journals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.time_entry_journals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.time_entry_journals_id_seq OWNER TO postgres;

--
-- Name: time_entry_journals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.time_entry_journals_id_seq OWNED BY public.time_entry_journals.id;


--
-- Name: timelines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.timelines (
    id integer NOT NULL,
    name character varying NOT NULL,
    project_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    options text
);


ALTER TABLE public.timelines OWNER TO postgres;

--
-- Name: timelines_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.timelines_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.timelines_id_seq OWNER TO postgres;

--
-- Name: timelines_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.timelines_id_seq OWNED BY public.timelines.id;


--
-- Name: tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tokens (
    id integer NOT NULL,
    user_id integer,
    type character varying,
    value character varying(128) DEFAULT ''::character varying NOT NULL,
    created_on timestamp without time zone NOT NULL,
    expires_on timestamp without time zone
);


ALTER TABLE public.tokens OWNER TO postgres;

--
-- Name: tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tokens_id_seq OWNER TO postgres;

--
-- Name: tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tokens_id_seq OWNED BY public.tokens.id;


--
-- Name: two_factor_authentication_devices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.two_factor_authentication_devices (
    id integer NOT NULL,
    type character varying,
    "default" boolean DEFAULT false NOT NULL,
    active boolean DEFAULT false NOT NULL,
    channel character varying NOT NULL,
    phone_number character varying,
    identifier character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    last_used_at integer,
    otp_secret text,
    user_id integer
);


ALTER TABLE public.two_factor_authentication_devices OWNER TO postgres;

--
-- Name: two_factor_authentication_devices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.two_factor_authentication_devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.two_factor_authentication_devices_id_seq OWNER TO postgres;

--
-- Name: two_factor_authentication_devices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.two_factor_authentication_devices_id_seq OWNED BY public.two_factor_authentication_devices.id;


--
-- Name: types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.types (
    id integer NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    "position" integer DEFAULT 1,
    is_in_roadmap boolean DEFAULT true NOT NULL,
    in_aggregation boolean DEFAULT true NOT NULL,
    is_milestone boolean DEFAULT false NOT NULL,
    is_default boolean DEFAULT false NOT NULL,
    color_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    is_standard boolean DEFAULT false NOT NULL,
    attribute_groups text
);


ALTER TABLE public.types OWNER TO postgres;

--
-- Name: types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_id_seq OWNER TO postgres;

--
-- Name: types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.types_id_seq OWNED BY public.types.id;


--
-- Name: user_passwords; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_passwords (
    id integer NOT NULL,
    user_id integer NOT NULL,
    hashed_password character varying(128) NOT NULL,
    salt character varying(64),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    type character varying NOT NULL
);


ALTER TABLE public.user_passwords OWNER TO postgres;

--
-- Name: user_passwords_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_passwords_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_passwords_id_seq OWNER TO postgres;

--
-- Name: user_passwords_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_passwords_id_seq OWNED BY public.user_passwords.id;


--
-- Name: user_preferences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_preferences (
    id integer NOT NULL,
    user_id integer DEFAULT 0 NOT NULL,
    others text,
    hide_mail boolean DEFAULT true,
    time_zone character varying,
    impaired boolean DEFAULT false
);


ALTER TABLE public.user_preferences OWNER TO postgres;

--
-- Name: user_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_preferences_id_seq OWNER TO postgres;

--
-- Name: user_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_preferences_id_seq OWNED BY public.user_preferences.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    login character varying(256) DEFAULT ''::character varying NOT NULL,
    firstname character varying(30) DEFAULT ''::character varying NOT NULL,
    lastname character varying(30) DEFAULT ''::character varying NOT NULL,
    mail character varying(60) DEFAULT ''::character varying NOT NULL,
    admin boolean DEFAULT false NOT NULL,
    status integer DEFAULT 1 NOT NULL,
    last_login_on timestamp without time zone,
    language character varying(5) DEFAULT ''::character varying,
    auth_source_id integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    type character varying,
    identity_url character varying,
    mail_notification character varying DEFAULT ''::character varying NOT NULL,
    first_login boolean DEFAULT true NOT NULL,
    force_password_change boolean DEFAULT false,
    failed_login_count integer DEFAULT 0,
    last_failed_login_on timestamp without time zone,
    consented_at timestamp without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: version_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.version_settings (
    id integer NOT NULL,
    project_id integer,
    version_id integer,
    display integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.version_settings OWNER TO postgres;

--
-- Name: version_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.version_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.version_settings_id_seq OWNER TO postgres;

--
-- Name: version_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.version_settings_id_seq OWNED BY public.version_settings.id;


--
-- Name: versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.versions (
    id integer NOT NULL,
    project_id integer DEFAULT 0 NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    description character varying DEFAULT ''::character varying,
    effective_date date,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    wiki_page_title character varying,
    status character varying DEFAULT 'open'::character varying,
    sharing character varying DEFAULT 'none'::character varying NOT NULL,
    start_date date
);


ALTER TABLE public.versions OWNER TO postgres;

--
-- Name: versions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.versions_id_seq OWNER TO postgres;

--
-- Name: versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.versions_id_seq OWNED BY public.versions.id;


--
-- Name: watchers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.watchers (
    id integer NOT NULL,
    watchable_type character varying DEFAULT ''::character varying NOT NULL,
    watchable_id integer DEFAULT 0 NOT NULL,
    user_id integer
);


ALTER TABLE public.watchers OWNER TO postgres;

--
-- Name: watchers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.watchers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.watchers_id_seq OWNER TO postgres;

--
-- Name: watchers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.watchers_id_seq OWNED BY public.watchers.id;


--
-- Name: webhooks_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.webhooks_events (
    id integer NOT NULL,
    name character varying,
    webhooks_webhook_id integer
);


ALTER TABLE public.webhooks_events OWNER TO postgres;

--
-- Name: webhooks_events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.webhooks_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.webhooks_events_id_seq OWNER TO postgres;

--
-- Name: webhooks_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.webhooks_events_id_seq OWNED BY public.webhooks_events.id;


--
-- Name: webhooks_logs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.webhooks_logs (
    id integer NOT NULL,
    webhooks_webhook_id integer,
    event_name character varying,
    url character varying,
    request_headers text,
    request_body text,
    response_code integer,
    response_headers text,
    response_body text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.webhooks_logs OWNER TO postgres;

--
-- Name: webhooks_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.webhooks_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.webhooks_logs_id_seq OWNER TO postgres;

--
-- Name: webhooks_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.webhooks_logs_id_seq OWNED BY public.webhooks_logs.id;


--
-- Name: webhooks_projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.webhooks_projects (
    id integer NOT NULL,
    project_id integer,
    webhooks_webhook_id integer
);


ALTER TABLE public.webhooks_projects OWNER TO postgres;

--
-- Name: webhooks_projects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.webhooks_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.webhooks_projects_id_seq OWNER TO postgres;

--
-- Name: webhooks_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.webhooks_projects_id_seq OWNED BY public.webhooks_projects.id;


--
-- Name: webhooks_webhooks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.webhooks_webhooks (
    id integer NOT NULL,
    name character varying,
    url text,
    description text NOT NULL,
    secret character varying,
    enabled boolean NOT NULL,
    all_projects boolean NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.webhooks_webhooks OWNER TO postgres;

--
-- Name: webhooks_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.webhooks_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.webhooks_webhooks_id_seq OWNER TO postgres;

--
-- Name: webhooks_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.webhooks_webhooks_id_seq OWNED BY public.webhooks_webhooks.id;


--
-- Name: wiki_content_journals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wiki_content_journals (
    id integer NOT NULL,
    journal_id integer NOT NULL,
    page_id integer NOT NULL,
    author_id integer,
    text text
);


ALTER TABLE public.wiki_content_journals OWNER TO postgres;

--
-- Name: wiki_content_journals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wiki_content_journals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wiki_content_journals_id_seq OWNER TO postgres;

--
-- Name: wiki_content_journals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wiki_content_journals_id_seq OWNED BY public.wiki_content_journals.id;


--
-- Name: wiki_content_versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wiki_content_versions (
    id integer NOT NULL,
    wiki_content_id integer NOT NULL,
    page_id integer NOT NULL,
    author_id integer,
    data bytea,
    compression character varying(6) DEFAULT ''::character varying,
    comments character varying DEFAULT ''::character varying,
    updated_on timestamp without time zone NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.wiki_content_versions OWNER TO postgres;

--
-- Name: wiki_content_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wiki_content_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wiki_content_versions_id_seq OWNER TO postgres;

--
-- Name: wiki_content_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wiki_content_versions_id_seq OWNED BY public.wiki_content_versions.id;


--
-- Name: wiki_contents; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wiki_contents (
    id integer NOT NULL,
    page_id integer NOT NULL,
    author_id integer,
    text text,
    updated_on timestamp without time zone NOT NULL,
    lock_version integer NOT NULL
);


ALTER TABLE public.wiki_contents OWNER TO postgres;

--
-- Name: wiki_contents_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wiki_contents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wiki_contents_id_seq OWNER TO postgres;

--
-- Name: wiki_contents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wiki_contents_id_seq OWNED BY public.wiki_contents.id;


--
-- Name: wiki_pages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wiki_pages (
    id integer NOT NULL,
    wiki_id integer NOT NULL,
    title character varying NOT NULL,
    created_on timestamp without time zone NOT NULL,
    protected boolean DEFAULT false NOT NULL,
    parent_id integer,
    slug character varying NOT NULL
);


ALTER TABLE public.wiki_pages OWNER TO postgres;

--
-- Name: wiki_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wiki_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wiki_pages_id_seq OWNER TO postgres;

--
-- Name: wiki_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wiki_pages_id_seq OWNED BY public.wiki_pages.id;


--
-- Name: wiki_redirects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wiki_redirects (
    id integer NOT NULL,
    wiki_id integer NOT NULL,
    title character varying,
    redirects_to character varying,
    created_on timestamp without time zone NOT NULL
);


ALTER TABLE public.wiki_redirects OWNER TO postgres;

--
-- Name: wiki_redirects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wiki_redirects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wiki_redirects_id_seq OWNER TO postgres;

--
-- Name: wiki_redirects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wiki_redirects_id_seq OWNED BY public.wiki_redirects.id;


--
-- Name: wikis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wikis (
    id integer NOT NULL,
    project_id integer NOT NULL,
    start_page character varying NOT NULL,
    status integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.wikis OWNER TO postgres;

--
-- Name: wikis_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wikis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wikis_id_seq OWNER TO postgres;

--
-- Name: wikis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wikis_id_seq OWNED BY public.wikis.id;


--
-- Name: work_package_journals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.work_package_journals (
    id integer NOT NULL,
    journal_id integer NOT NULL,
    type_id integer DEFAULT 0 NOT NULL,
    project_id integer DEFAULT 0 NOT NULL,
    subject character varying DEFAULT ''::character varying NOT NULL,
    description text,
    due_date date,
    category_id integer,
    status_id integer DEFAULT 0 NOT NULL,
    assigned_to_id integer,
    priority_id integer DEFAULT 0 NOT NULL,
    fixed_version_id integer,
    author_id integer DEFAULT 0 NOT NULL,
    done_ratio integer DEFAULT 0 NOT NULL,
    estimated_hours double precision,
    start_date date,
    parent_id integer,
    responsible_id integer,
    cost_object_id integer,
    story_points integer,
    remaining_hours double precision
);


ALTER TABLE public.work_package_journals OWNER TO postgres;

--
-- Name: work_package_journals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.work_package_journals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.work_package_journals_id_seq OWNER TO postgres;

--
-- Name: work_package_journals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.work_package_journals_id_seq OWNED BY public.work_package_journals.id;


--
-- Name: work_packages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.work_packages (
    id integer NOT NULL,
    type_id integer DEFAULT 0 NOT NULL,
    project_id integer DEFAULT 0 NOT NULL,
    subject character varying DEFAULT ''::character varying NOT NULL,
    description text,
    due_date date,
    category_id integer,
    status_id integer DEFAULT 0 NOT NULL,
    assigned_to_id integer,
    priority_id integer DEFAULT 0,
    fixed_version_id integer,
    author_id integer DEFAULT 0 NOT NULL,
    lock_version integer DEFAULT 0 NOT NULL,
    done_ratio integer DEFAULT 0 NOT NULL,
    estimated_hours double precision,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    start_date date,
    responsible_id integer,
    "position" integer,
    story_points integer,
    remaining_hours double precision,
    cost_object_id integer
);


ALTER TABLE public.work_packages OWNER TO postgres;

--
-- Name: work_packages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.work_packages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.work_packages_id_seq OWNER TO postgres;

--
-- Name: work_packages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.work_packages_id_seq OWNED BY public.work_packages.id;


--
-- Name: workflows; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.workflows (
    id integer NOT NULL,
    type_id integer DEFAULT 0 NOT NULL,
    old_status_id integer DEFAULT 0 NOT NULL,
    new_status_id integer DEFAULT 0 NOT NULL,
    role_id integer DEFAULT 0 NOT NULL,
    assignee boolean DEFAULT false NOT NULL,
    author boolean DEFAULT false NOT NULL
);


ALTER TABLE public.workflows OWNER TO postgres;

--
-- Name: workflows_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workflows_id_seq OWNER TO postgres;

--
-- Name: workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.workflows_id_seq OWNED BY public.workflows.id;


--
-- Name: announcements id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements ALTER COLUMN id SET DEFAULT nextval('public.announcements_id_seq'::regclass);


--
-- Name: attachable_journals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attachable_journals ALTER COLUMN id SET DEFAULT nextval('public.attachable_journals_id_seq'::regclass);


--
-- Name: attachment_journals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attachment_journals ALTER COLUMN id SET DEFAULT nextval('public.attachment_journals_id_seq'::regclass);


--
-- Name: attachments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attachments ALTER COLUMN id SET DEFAULT nextval('public.attachments_id_seq'::regclass);


--
-- Name: attribute_help_texts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attribute_help_texts ALTER COLUMN id SET DEFAULT nextval('public.attribute_help_texts_id_seq'::regclass);


--
-- Name: auth_sources id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_sources ALTER COLUMN id SET DEFAULT nextval('public.auth_sources_id_seq'::regclass);


--
-- Name: available_project_statuses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.available_project_statuses ALTER COLUMN id SET DEFAULT nextval('public.available_project_statuses_id_seq'::regclass);


--
-- Name: boards id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards ALTER COLUMN id SET DEFAULT nextval('public.boards_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: changes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.changes ALTER COLUMN id SET DEFAULT nextval('public.changes_id_seq'::regclass);


--
-- Name: changeset_journals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.changeset_journals ALTER COLUMN id SET DEFAULT nextval('public.changeset_journals_id_seq'::regclass);


--
-- Name: changesets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.changesets ALTER COLUMN id SET DEFAULT nextval('public.changesets_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: cost_entries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cost_entries ALTER COLUMN id SET DEFAULT nextval('public.cost_entries_id_seq'::regclass);


--
-- Name: cost_object_journals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cost_object_journals ALTER COLUMN id SET DEFAULT nextval('public.cost_object_journals_id_seq'::regclass);


--
-- Name: cost_objects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cost_objects ALTER COLUMN id SET DEFAULT nextval('public.cost_objects_id_seq'::regclass);


--
-- Name: cost_queries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cost_queries ALTER COLUMN id SET DEFAULT nextval('public.cost_queries_id_seq'::regclass);


--
-- Name: cost_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cost_types ALTER COLUMN id SET DEFAULT nextval('public.cost_types_id_seq'::regclass);


--
-- Name: custom_fields id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custom_fields ALTER COLUMN id SET DEFAULT nextval('public.custom_fields_id_seq'::regclass);


--
-- Name: custom_options id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custom_options ALTER COLUMN id SET DEFAULT nextval('public.custom_options_id_seq'::regclass);


--
-- Name: custom_styles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custom_styles ALTER COLUMN id SET DEFAULT nextval('public.custom_styles_id_seq'::regclass);


--
-- Name: custom_values id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custom_values ALTER COLUMN id SET DEFAULT nextval('public.custom_values_id_seq'::regclass);


--
-- Name: customizable_journals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customizable_journals ALTER COLUMN id SET DEFAULT nextval('public.customizable_journals_id_seq'::regclass);


--
-- Name: delayed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.delayed_jobs ALTER COLUMN id SET DEFAULT nextval('public.delayed_jobs_id_seq'::regclass);


--
-- Name: design_colors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.design_colors ALTER COLUMN id SET DEFAULT nextval('public.design_colors_id_seq'::regclass);


--
-- Name: document_journals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.document_journals ALTER COLUMN id SET DEFAULT nextval('public.document_journals_id_seq'::regclass);


--
-- Name: documents id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.documents ALTER COLUMN id SET DEFAULT nextval('public.documents_id_seq'::regclass);


--
-- Name: enabled_modules id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enabled_modules ALTER COLUMN id SET DEFAULT nextval('public.enabled_modules_id_seq'::regclass);


--
-- Name: enterprise_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enterprise_tokens ALTER COLUMN id SET DEFAULT nextval('public.enterprise_tokens_id_seq'::regclass);


--
-- Name: enumerations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enumerations ALTER COLUMN id SET DEFAULT nextval('public.enumerations_id_seq'::regclass);


--
-- Name: export_card_configurations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.export_card_configurations ALTER COLUMN id SET DEFAULT nextval('public.export_card_configurations_id_seq'::regclass);


--
-- Name: hierarchy_paths id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hierarchy_paths ALTER COLUMN id SET DEFAULT nextval('public.hierarchy_paths_id_seq'::regclass);


--
-- Name: journals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.journals ALTER COLUMN id SET DEFAULT nextval('public.journals_id_seq'::regclass);


--
-- Name: labor_budget_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.labor_budget_items ALTER COLUMN id SET DEFAULT nextval('public.labor_budget_items_id_seq'::regclass);


--
-- Name: ldap_groups_memberships id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ldap_groups_memberships ALTER COLUMN id SET DEFAULT nextval('public.ldap_groups_memberships_id_seq'::regclass);


--
-- Name: ldap_groups_synchronized_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ldap_groups_synchronized_groups ALTER COLUMN id SET DEFAULT nextval('public.ldap_groups_synchronized_groups_id_seq'::regclass);


--
-- Name: material_budget_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material_budget_items ALTER COLUMN id SET DEFAULT nextval('public.material_budget_items_id_seq'::regclass);


--
-- Name: meeting_content_journals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting_content_journals ALTER COLUMN id SET DEFAULT nextval('public.meeting_content_journals_id_seq'::regclass);


--
-- Name: meeting_contents id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting_contents ALTER COLUMN id SET DEFAULT nextval('public.meeting_contents_id_seq'::regclass);


--
-- Name: meeting_journals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting_journals ALTER COLUMN id SET DEFAULT nextval('public.meeting_journals_id_seq'::regclass);


--
-- Name: meeting_participants id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting_participants ALTER COLUMN id SET DEFAULT nextval('public.meeting_participants_id_seq'::regclass);


--
-- Name: meetings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meetings ALTER COLUMN id SET DEFAULT nextval('public.meetings_id_seq'::regclass);


--
-- Name: member_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.member_roles ALTER COLUMN id SET DEFAULT nextval('public.member_roles_id_seq'::regclass);


--
-- Name: members id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members ALTER COLUMN id SET DEFAULT nextval('public.members_id_seq'::regclass);


--
-- Name: menu_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu_items ALTER COLUMN id SET DEFAULT nextval('public.menu_items_id_seq'::regclass);


--
-- Name: message_journals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.message_journals ALTER COLUMN id SET DEFAULT nextval('public.message_journals_id_seq'::regclass);


--
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


--
-- Name: my_projects_overviews id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_projects_overviews ALTER COLUMN id SET DEFAULT nextval('public.my_projects_overviews_id_seq'::regclass);


--
-- Name: news id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq'::regclass);


--
-- Name: news_journals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_journals ALTER COLUMN id SET DEFAULT nextval('public.news_journals_id_seq'::regclass);


--
-- Name: plaintext_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plaintext_tokens ALTER COLUMN id SET DEFAULT nextval('public.plaintext_tokens_id_seq'::regclass);


--
-- Name: planning_element_type_colors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planning_element_type_colors ALTER COLUMN id SET DEFAULT nextval('public.planning_element_type_colors_id_seq'::regclass);


--
-- Name: principal_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.principal_roles ALTER COLUMN id SET DEFAULT nextval('public.principal_roles_id_seq'::regclass);


--
-- Name: project_associations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_associations ALTER COLUMN id SET DEFAULT nextval('public.project_associations_id_seq'::regclass);


--
-- Name: project_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_types ALTER COLUMN id SET DEFAULT nextval('public.project_types_id_seq'::regclass);


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Name: queries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.queries ALTER COLUMN id SET DEFAULT nextval('public.queries_id_seq'::regclass);


--
-- Name: rates id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rates ALTER COLUMN id SET DEFAULT nextval('public.rates_id_seq'::regclass);


--
-- Name: relations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relations ALTER COLUMN id SET DEFAULT nextval('public.relations_id_seq'::regclass);


--
-- Name: reportings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reportings ALTER COLUMN id SET DEFAULT nextval('public.reportings_id_seq'::regclass);


--
-- Name: repositories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.repositories ALTER COLUMN id SET DEFAULT nextval('public.repositories_id_seq'::regclass);


--
-- Name: role_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_permissions ALTER COLUMN id SET DEFAULT nextval('public.role_permissions_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- Name: settings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.settings ALTER COLUMN id SET DEFAULT nextval('public.settings_id_seq'::regclass);


--
-- Name: statuses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statuses ALTER COLUMN id SET DEFAULT nextval('public.statuses_id_seq'::regclass);


--
-- Name: time_entries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_entries ALTER COLUMN id SET DEFAULT nextval('public.time_entries_id_seq'::regclass);


--
-- Name: time_entry_journals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_entry_journals ALTER COLUMN id SET DEFAULT nextval('public.time_entry_journals_id_seq'::regclass);


--
-- Name: timelines id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timelines ALTER COLUMN id SET DEFAULT nextval('public.timelines_id_seq'::regclass);


--
-- Name: tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tokens ALTER COLUMN id SET DEFAULT nextval('public.tokens_id_seq'::regclass);


--
-- Name: two_factor_authentication_devices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.two_factor_authentication_devices ALTER COLUMN id SET DEFAULT nextval('public.two_factor_authentication_devices_id_seq'::regclass);


--
-- Name: types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types ALTER COLUMN id SET DEFAULT nextval('public.types_id_seq'::regclass);


--
-- Name: user_passwords id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_passwords ALTER COLUMN id SET DEFAULT nextval('public.user_passwords_id_seq'::regclass);


--
-- Name: user_preferences id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_preferences ALTER COLUMN id SET DEFAULT nextval('public.user_preferences_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: version_settings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.version_settings ALTER COLUMN id SET DEFAULT nextval('public.version_settings_id_seq'::regclass);


--
-- Name: versions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.versions ALTER COLUMN id SET DEFAULT nextval('public.versions_id_seq'::regclass);


--
-- Name: watchers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.watchers ALTER COLUMN id SET DEFAULT nextval('public.watchers_id_seq'::regclass);


--
-- Name: webhooks_events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.webhooks_events ALTER COLUMN id SET DEFAULT nextval('public.webhooks_events_id_seq'::regclass);


--
-- Name: webhooks_logs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.webhooks_logs ALTER COLUMN id SET DEFAULT nextval('public.webhooks_logs_id_seq'::regclass);


--
-- Name: webhooks_projects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.webhooks_projects ALTER COLUMN id SET DEFAULT nextval('public.webhooks_projects_id_seq'::regclass);


--
-- Name: webhooks_webhooks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.webhooks_webhooks ALTER COLUMN id SET DEFAULT nextval('public.webhooks_webhooks_id_seq'::regclass);


--
-- Name: wiki_content_journals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wiki_content_journals ALTER COLUMN id SET DEFAULT nextval('public.wiki_content_journals_id_seq'::regclass);


--
-- Name: wiki_content_versions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wiki_content_versions ALTER COLUMN id SET DEFAULT nextval('public.wiki_content_versions_id_seq'::regclass);


--
-- Name: wiki_contents id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wiki_contents ALTER COLUMN id SET DEFAULT nextval('public.wiki_contents_id_seq'::regclass);


--
-- Name: wiki_pages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wiki_pages ALTER COLUMN id SET DEFAULT nextval('public.wiki_pages_id_seq'::regclass);


--
-- Name: wiki_redirects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wiki_redirects ALTER COLUMN id SET DEFAULT nextval('public.wiki_redirects_id_seq'::regclass);


--
-- Name: wikis id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wikis ALTER COLUMN id SET DEFAULT nextval('public.wikis_id_seq'::regclass);


--
-- Name: work_package_journals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_package_journals ALTER COLUMN id SET DEFAULT nextval('public.work_package_journals_id_seq'::regclass);


--
-- Name: work_packages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_packages ALTER COLUMN id SET DEFAULT nextval('public.work_packages_id_seq'::regclass);


--
-- Name: workflows id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workflows ALTER COLUMN id SET DEFAULT nextval('public.workflows_id_seq'::regclass);


--
-- Data for Name: announcements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.announcements (id, text, show_until, active, created_at, updated_at) FROM stdin;
1	Announcementdsdsdsad	2018-09-08	t	2018-08-25 00:38:54.632114	2018-08-25 00:39:03.059004
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	production	2018-08-24 22:05:34.097236	2018-08-24 22:05:34.097236
\.


--
-- Data for Name: attachable_journals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attachable_journals (id, journal_id, attachment_id, filename) FROM stdin;
\.


--
-- Data for Name: attachment_journals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attachment_journals (id, journal_id, container_id, container_type, filename, disk_filename, filesize, content_type, digest, downloads, author_id, description) FROM stdin;
\.


--
-- Data for Name: attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attachments (id, container_id, container_type, filename, disk_filename, filesize, content_type, digest, downloads, author_id, created_on, description, file) FROM stdin;
\.


--
-- Data for Name: attribute_help_texts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attribute_help_texts (id, help_text, type, attribute_name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: auth_sources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_sources (id, type, name, host, port, account, account_password, base_dn, attr_login, attr_firstname, attr_lastname, attr_mail, onthefly_register, tls, attr_admin) FROM stdin;
\.


--
-- Data for Name: available_project_statuses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.available_project_statuses (id, project_type_id, reported_project_status_id, created_at, updated_at) FROM stdin;
1	1	11	2018-08-24 22:05:57.436808	2018-08-24 22:05:57.436808
2	1	12	2018-08-24 22:05:57.441525	2018-08-24 22:05:57.441525
3	1	13	2018-08-24 22:05:57.4487	2018-08-24 22:05:57.4487
4	2	11	2018-08-24 22:05:57.48485	2018-08-24 22:05:57.48485
5	2	12	2018-08-24 22:05:57.488594	2018-08-24 22:05:57.488594
6	2	13	2018-08-24 22:05:57.493038	2018-08-24 22:05:57.493038
\.


--
-- Data for Name: boards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards (id, project_id, name, description, "position", topics_count, messages_count, last_message_id) FROM stdin;
1	1	Demo Forum	This is a demo forum.	1	0	0	\N
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, project_id, name, assigned_to_id) FROM stdin;
\.


--
-- Data for Name: changes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.changes (id, changeset_id, action, path, from_path, from_revision, revision, branch) FROM stdin;
\.


--
-- Data for Name: changeset_journals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.changeset_journals (id, journal_id, repository_id, revision, committer, committed_on, comments, commit_date, scmid, user_id) FROM stdin;
\.


--
-- Data for Name: changesets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.changesets (id, repository_id, revision, committer, committed_on, comments, commit_date, scmid, user_id) FROM stdin;
\.


--
-- Data for Name: changesets_work_packages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.changesets_work_packages (changeset_id, work_package_id) FROM stdin;
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comments (id, commented_type, commented_id, author_id, comments, created_on, updated_on) FROM stdin;
\.


--
-- Data for Name: cost_entries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cost_entries (id, user_id, project_id, work_package_id, cost_type_id, units, spent_on, created_on, updated_on, comments, blocked, overridden_costs, costs, rate_id, tyear, tmonth, tweek) FROM stdin;
\.


--
-- Data for Name: cost_object_journals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cost_object_journals (id, journal_id, project_id, author_id, subject, description, fixed_date, created_on) FROM stdin;
\.


--
-- Data for Name: cost_objects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cost_objects (id, project_id, author_id, subject, description, type, fixed_date, created_on, updated_on) FROM stdin;
\.


--
-- Data for Name: cost_queries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cost_queries (id, user_id, project_id, name, is_public, created_on, updated_on, serialized) FROM stdin;
\.


--
-- Data for Name: cost_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cost_types (id, name, unit, unit_plural, "default", deleted_at) FROM stdin;
\.


--
-- Data for Name: custom_fields; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.custom_fields (id, type, field_format, regexp, min_length, max_length, is_required, is_for_all, is_filter, "position", searchable, editable, visible, created_at, updated_at, multi_value, default_value, name) FROM stdin;
\.


--
-- Data for Name: custom_fields_projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.custom_fields_projects (custom_field_id, project_id) FROM stdin;
\.


--
-- Data for Name: custom_fields_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.custom_fields_types (custom_field_id, type_id) FROM stdin;
\.


--
-- Data for Name: custom_options; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.custom_options (id, custom_field_id, "position", default_value, value, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: custom_styles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.custom_styles (id, logo, created_at, updated_at, favicon, touch_icon) FROM stdin;
\.


--
-- Data for Name: custom_values; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.custom_values (id, customized_type, customized_id, custom_field_id, value) FROM stdin;
\.


--
-- Data for Name: customizable_journals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customizable_journals (id, journal_id, custom_field_id, value) FROM stdin;
\.


--
-- Data for Name: delayed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.delayed_jobs (id, priority, attempts, handler, last_error, run_at, locked_at, failed_at, locked_by, created_at, updated_at, queue) FROM stdin;
\.


--
-- Data for Name: design_colors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.design_colors (id, variable, hexcode, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: document_journals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.document_journals (id, journal_id, project_id, category_id, title, description, created_on) FROM stdin;
\.


--
-- Data for Name: documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.documents (id, project_id, category_id, title, description, created_on) FROM stdin;
\.


--
-- Data for Name: done_statuses_for_project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.done_statuses_for_project (project_id, status_id) FROM stdin;
\.


--
-- Data for Name: enabled_modules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.enabled_modules (id, project_id, name) FROM stdin;
1	1	work_package_tracking
2	1	time_tracking
3	1	costs_module
4	1	reporting_module
5	1	backlogs
6	1	activity
7	1	calendar
8	1	documents
9	1	meetings
10	1	news
11	1	timelines
12	1	wiki
\.


--
-- Data for Name: enterprise_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.enterprise_tokens (id, encoded_token, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: enumerations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.enumerations (id, name, "position", is_default, type, active, project_id, parent_id) FROM stdin;
8	Normal	2	t	IssuePriority	t	\N	\N
5	Suporte	5	t	TimeEntryActivity	t	\N	\N
1	Gerenciamento	1	f	TimeEntryActivity	t	\N	\N
2	Análise	2	f	TimeEntryActivity	t	\N	\N
3	Desenvolvimento	3	f	TimeEntryActivity	t	\N	\N
4	Teste	4	f	TimeEntryActivity	t	\N	\N
6	Outro	6	f	TimeEntryActivity	t	\N	\N
17	Infraestrutura	7	f	TimeEntryActivity	t	\N	\N
7	Baixa	1	f	IssuePriority	t	\N	\N
9	Alta	3	f	IssuePriority	t	\N	\N
10	Urgente	4	f	IssuePriority	t	\N	\N
11	Verde	1	t	ReportedProjectStatus	t	\N	\N
12	Laranja	2	f	ReportedProjectStatus	t	\N	\N
13	Vermelha	3	f	ReportedProjectStatus	t	\N	\N
14	Documentação	1	f	DocumentCategory	t	\N	\N
15	Briefing	2	f	DocumentCategory	t	\N	\N
16	Relato	3	f	DocumentCategory	t	\N	\N
18	Outro	4	f	DocumentCategory	t	\N	\N
19	Documentation	5	f	DocumentCategory	t	\N	\N
20	Specification	6	f	DocumentCategory	t	\N	\N
21	Other	7	f	DocumentCategory	t	\N	\N
\.


--
-- Data for Name: export_card_configurations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.export_card_configurations (id, name, per_page, page_size, orientation, rows, active, description) FROM stdin;
\.


--
-- Data for Name: group_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.group_users (group_id, user_id) FROM stdin;
\.


--
-- Data for Name: hierarchy_paths; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hierarchy_paths (id, work_package_id, path) FROM stdin;
10	8	9
12	15	9
\.


--
-- Data for Name: journals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.journals (id, journable_type, journable_id, user_id, notes, created_at, version, activity_type) FROM stdin;
1	WorkPackage	1	2		2018-08-24 22:05:59.96579	1	work_packages
8	WikiContent	1	1		2018-08-25 19:22:24.090372	1	wiki_edits
9	Meeting	1	1		2018-08-26 02:13:00.025055	1	meetings
10	WorkPackage	8	3		2018-08-26 19:23:42.444982	1	work_packages
11	WorkPackage	9	1		2018-08-26 19:26:49.752031	1	work_packages
12	WorkPackage	10	1		2018-08-26 19:29:21.330033	1	work_packages
13	WorkPackage	11	1		2018-08-26 19:29:42.674753	1	work_packages
14	WorkPackage	12	1		2018-08-26 19:30:00.221285	1	work_packages
15	WorkPackage	13	1		2018-08-26 19:30:28.167523	1	work_packages
16	WorkPackage	10	1		2018-08-26 19:35:20.081496	2	work_packages
17	WorkPackage	14	1		2018-08-26 19:37:43.795084	1	work_packages
18	WorkPackage	14	1		2018-08-26 19:38:01.769129	2	work_packages
19	WorkPackage	14	1		2018-08-26 19:43:54.118234	3	work_packages
20	WorkPackage	14	1		2018-08-26 19:43:58.589574	4	work_packages
21	WorkPackage	14	1		2018-08-26 19:44:03.747952	5	work_packages
22	WorkPackage	15	1		2018-08-26 20:16:56.563259	1	work_packages
23	WorkPackage	15	1		2018-08-26 20:17:28.787413	2	work_packages
24	WorkPackage	15	1	tem que ver isso aí\nparece os computadores que tão pegando fogo	2018-08-26 20:17:43.236727	3	work_packages
25	WorkPackage	9	1		2018-08-26 20:18:10.068245	2	work_packages
26	Meeting	2	1		2018-08-26 20:21:28.322802	1	meetings
27	MeetingContent	1	1	Agenda closed	2018-08-26 20:21:36.602895	1	meeting_agendas
28	MeetingContent	2	1	Minutes created	2018-08-26 20:21:36.695042	1	meeting_minutes
\.


--
-- Data for Name: labor_budget_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.labor_budget_items (id, cost_object_id, hours, user_id, comments, budget) FROM stdin;
\.


--
-- Data for Name: ldap_groups_memberships; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ldap_groups_memberships (id, user_id, group_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: ldap_groups_synchronized_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ldap_groups_synchronized_groups (id, entry, group_id, auth_source_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: material_budget_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.material_budget_items (id, cost_object_id, units, cost_type_id, comments, budget) FROM stdin;
\.


--
-- Data for Name: meeting_content_journals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meeting_content_journals (id, journal_id, meeting_id, author_id, text, locked) FROM stdin;
1	27	2	1	\N	t
2	28	2	\N	\N	f
\.


--
-- Data for Name: meeting_contents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meeting_contents (id, type, meeting_id, author_id, text, lock_version, created_at, updated_at, locked) FROM stdin;
1	MeetingAgenda	2	1	\N	0	2018-08-26 20:21:36.573443	2018-08-26 20:21:36.629549	t
2	MeetingMinutes	2	\N	\N	0	2018-08-26 20:21:36.683099	2018-08-26 20:21:36.700624	f
\.


--
-- Data for Name: meeting_journals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meeting_journals (id, journal_id, title, author_id, project_id, location, start_time, duration) FROM stdin;
1	9	dsadsa	1	1	dsadsad	2018-08-27 09:00:00	2
2	26	dasdsadsa	1	1	dsads	2018-08-29 09:00:00	2
\.


--
-- Data for Name: meeting_participants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meeting_participants (id, user_id, meeting_id, email, name, invited, attended, created_at, updated_at) FROM stdin;
1	1	1	\N	\N	t	f	2018-08-26 02:12:59.925682	2018-08-26 02:12:59.925682
2	1	2	\N	\N	t	f	2018-08-26 20:21:28.27791	2018-08-26 20:21:28.27791
\.


--
-- Data for Name: meetings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meetings (id, title, author_id, project_id, location, start_time, duration, created_at, updated_at) FROM stdin;
1	dsadsa	1	1	dsadsad	2018-08-27 09:00:00	2	2018-08-26 02:12:59.922975	2018-08-26 02:13:00.06853
2	dasdsadsa	1	1	dsads	2018-08-29 09:00:00	2	2018-08-26 20:21:28.274663	2018-08-26 20:21:28.33033
\.


--
-- Data for Name: member_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.member_roles (id, member_id, role_id, inherited_from) FROM stdin;
1	1	3	\N
\.


--
-- Data for Name: members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.members (id, user_id, project_id, created_on, mail_notification) FROM stdin;
1	1	1	2018-08-24 22:05:59.272794	f
\.


--
-- Data for Name: menu_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.menu_items (id, name, title, parent_id, options, navigatable_id, type) FROM stdin;
1	d45e84a6-b054-465e-9f9a-53152a2f52b1	Timeline	\N	\N	1	MenuItems::QueryMenuItem
7	wiki	Wiki	\N	---\n:new_wiki_page: true\n:index_page: true\n	1	MenuItems::WikiMenuItem
2	05cd9700-c5fe-4539-93b2-84faac62b1bb	Tickets	\N	\N	2	MenuItems::QueryMenuItem
3	14bffeaf-c296-4bcf-8d7b-a4c9c6a5822c	Problemas	\N	\N	3	MenuItems::QueryMenuItem
4	2133c33e-50a0-4875-bea3-617e0a8060ee	Tarefas	\N	\N	4	MenuItems::QueryMenuItem
5	e6d235af-448f-47a3-90b8-3d213580ad0c	Marcos	\N	\N	5	MenuItems::QueryMenuItem
6	d1962ad1-c1a2-4ebe-b559-8ffa7a6fafa6	Todas Atividades	\N	\N	6	MenuItems::QueryMenuItem
8	b9ecdf02-2596-45a5-978b-f7b96c62d651	Meus	\N	\N	7	MenuItems::QueryMenuItem
\.


--
-- Data for Name: message_journals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.message_journals (id, journal_id, board_id, parent_id, subject, content, author_id, replies_count, last_reply_id, locked, sticky) FROM stdin;
\.


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.messages (id, board_id, parent_id, subject, content, author_id, replies_count, last_reply_id, created_on, updated_on, locked, sticky, sticked_on) FROM stdin;
\.


--
-- Data for Name: my_projects_overviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.my_projects_overviews (id, project_id, "left", "right", top, hidden, created_on) FROM stdin;
1	1	---\n- project_description\n- project_details\n- work_package_tracking\n	---\n- members\n- news_latest\n	---\n- - a\n  - Add teaser ...\n  - "h3. Custom text\\r\\n\\r\\ndshgajdhjskadsadsadsadasdas\\r\\n\\r\\n\\r\\noi Alline"\n	---\n- documents\n	2018-08-25 00:22:20.50341
\.


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news (id, project_id, title, summary, description, author_id, created_on, comments_count) FROM stdin;
\.


--
-- Data for Name: news_journals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_journals (id, journal_id, project_id, title, summary, description, author_id, comments_count) FROM stdin;
\.


--
-- Data for Name: plaintext_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.plaintext_tokens (id, user_id, action, value, created_on) FROM stdin;
\.


--
-- Data for Name: planning_element_type_colors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.planning_element_type_colors (id, name, hexcode, "position", created_at, updated_at) FROM stdin;
1	Blue (dark)	#06799F	1	2018-08-24 22:05:36.645475	2018-08-24 22:05:36.645475
2	Blue	#3493B3	2	2018-08-24 22:05:36.651165	2018-08-24 22:05:36.651165
3	Blue (light)	#00B0F0	3	2018-08-24 22:05:36.654338	2018-08-24 22:05:36.654338
4	Green (light)	#35C53F	4	2018-08-24 22:05:36.657206	2018-08-24 22:05:36.657206
5	Green (dark)	#339933	5	2018-08-24 22:05:36.660835	2018-08-24 22:05:36.660835
6	Yellow	#FFFF00	6	2018-08-24 22:05:36.665996	2018-08-24 22:05:36.665996
7	Orange	#FFCC00	7	2018-08-24 22:05:36.669452	2018-08-24 22:05:36.669452
8	Red	#FF3300	8	2018-08-24 22:05:36.672416	2018-08-24 22:05:36.672416
9	Magenta	#E20074	9	2018-08-24 22:05:36.675375	2018-08-24 22:05:36.675375
10	White	#FFFFFF	10	2018-08-24 22:05:36.680914	2018-08-24 22:05:36.680914
11	Grey (light)	#F8F8F8	11	2018-08-24 22:05:36.684832	2018-08-24 22:05:36.684832
12	Grey	#EAEAEA	12	2018-08-24 22:05:36.688125	2018-08-24 22:05:36.688125
13	Grey (dark)	#878787	13	2018-08-24 22:05:36.691158	2018-08-24 22:05:36.691158
14	Black	#000000	14	2018-08-24 22:05:36.695517	2018-08-24 22:05:36.695517
\.


--
-- Data for Name: principal_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.principal_roles (id, role_id, principal_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: project_associations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project_associations (id, project_a_id, project_b_id, description, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: project_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project_types (id, name, allows_association, "position", created_at, updated_at) FROM stdin;
1	Scrum team	t	1	2018-08-24 22:05:57.423524	2018-08-24 22:05:57.423524
2	Standard project	t	2	2018-08-24 22:05:57.476902	2018-08-24 22:05:57.476902
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projects (id, name, description, is_public, parent_id, created_on, updated_on, identifier, status, lft, rgt, project_type_id, responsible_id, work_packages_responsible_id) FROM stdin;
1	Demo project	This is a description for your project. You can edit the description in the Project settings -> Description	t	\N	2018-08-24 22:05:59.145627	2018-08-25 00:24:15.078697	demo-project	1	1	2	2	-1	\N
\.


--
-- Data for Name: projects_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projects_types (project_id, type_id) FROM stdin;
1	1
1	2
1	3
1	4
1	5
1	7
\.


--
-- Data for Name: queries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.queries (id, project_id, name, filters, user_id, is_public, column_names, sort_criteria, group_by, display_sums, timeline_visible, show_hierarchies, timeline_zoom_level, timeline_labels) FROM stdin;
1	1	Timeline	---\nstatus_id:\n  :operator: o\n  :values: []\n	1	t	---\n- :subject\n- :type\n- :status\n	---\n- - id\n  - asc\n	\N	f	t	t	1	\N
2	1	Tickets	---\nstatus_id:\n  :operator: o\n  :values: []\ntype_id:\n  :operator: "="\n  :values:\n  - '7'\n	1	t	---\n- :id\n- :type\n- :status\n- :priority\n- :subject\n- :assigned_to\n- :created_at\n	\N	\N	f	f	f	0	\N
3	1	Problemas	---\nstatus_id:\n  :operator: o\n  :values: []\ntype_id:\n  :operator: "="\n  :values:\n  - '5'\n	1	t	---\n- :id\n- :type\n- :status\n- :subject\n- :start_date\n- :due_date\n	\N	\N	f	f	f	0	\N
4	1	Tarefas	---\nstatus_id:\n  :operator: o\n  :values: []\ntype_id:\n  :operator: "="\n  :values:\n  - '1'\n	1	t	---\n- :id\n- :type\n- :status\n- :subject\n- :start_date\n- :due_date\n	\N	\N	f	f	f	0	\N
5	1	Marcos	---\nstatus_id:\n  :operator: o\n  :values: []\ntype_id:\n  :operator: "="\n  :values:\n  - '2'\n	1	t	---\n- :id\n- :type\n- :status\n- :priority\n- :subject\n- :assigned_to\n	\N	\N	f	f	f	0	\N
6	1	Todas Atividades	---\nstatus_id:\n  :operator: o\n  :values: []\n	1	t	---\n- :id\n- :type\n- :status\n- :priority\n- :subject\n- :assigned_to\n	\N	\N	f	f	f	0	\N
7	1	Meus	---\nstatus_id:\n  :operator: "*"\n  :values: []\nauthor_id:\n  :operator: "="\n  :values:\n  - me\n	1	t	---\n- :id\n- :type\n- :status\n- :priority\n- :subject\n- :assigned_to\n	\N	\N	f	f	f	0	\N
\.


--
-- Data for Name: rates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rates (id, valid_from, rate, type, project_id, user_id, cost_type_id) FROM stdin;
\.


--
-- Data for Name: relations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relations (id, from_id, to_id, delay, description, hierarchy, relates, duplicates, blocks, follows, includes, requires, count) FROM stdin;
1	1	1	\N	\N	0	0	0	0	0	0	0	1
35	8	8	\N	\N	0	0	0	0	0	0	0	1
36	9	9	\N	\N	0	0	0	0	0	0	0	1
37	10	10	\N	\N	0	0	0	0	0	0	0	1
38	11	11	\N	\N	0	0	0	0	0	0	0	1
39	12	12	\N	\N	0	0	0	0	0	0	0	1
40	13	13	\N	\N	0	0	0	0	0	0	0	1
43	10	11	\N	\N	0	0	0	0	0	1	0	1
44	14	14	\N	\N	0	0	0	0	0	0	0	1
46	9	8	\N	\N	1	0	0	0	0	0	0	1
47	15	15	\N	\N	0	0	0	0	0	0	0	1
49	9	15	\N	\N	1	0	0	0	0	0	0	1
\.


--
-- Data for Name: reportings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reportings (id, reported_project_status_comment, project_id, reporting_to_project_id, reported_project_status_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: repositories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.repositories (id, project_id, url, login, password, root_url, type, path_encoding, log_encoding, scm_type, required_storage_bytes, storage_updated_at) FROM stdin;
\.


--
-- Data for Name: role_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role_permissions (id, permission, role_id, created_at, updated_at) FROM stdin;
1	edit_project	3	2018-08-24 22:05:36.06066	2018-08-24 22:05:36.06066
2	select_project_modules	3	2018-08-24 22:05:36.063918	2018-08-24 22:05:36.063918
3	manage_members	3	2018-08-24 22:05:36.065499	2018-08-24 22:05:36.065499
4	view_members	3	2018-08-24 22:05:36.06678	2018-08-24 22:05:36.06678
5	manage_versions	3	2018-08-24 22:05:36.068142	2018-08-24 22:05:36.068142
6	manage_types	3	2018-08-24 22:05:36.069341	2018-08-24 22:05:36.069341
7	add_subprojects	3	2018-08-24 22:05:36.070653	2018-08-24 22:05:36.070653
8	copy_projects	3	2018-08-24 22:05:36.071646	2018-08-24 22:05:36.071646
9	manage_categories	3	2018-08-24 22:05:36.072775	2018-08-24 22:05:36.072775
10	view_work_packages	3	2018-08-24 22:05:36.073857	2018-08-24 22:05:36.073857
11	export_work_packages	3	2018-08-24 22:05:36.074868	2018-08-24 22:05:36.074868
12	add_work_packages	3	2018-08-24 22:05:36.075848	2018-08-24 22:05:36.075848
13	move_work_packages	3	2018-08-24 22:05:36.077538	2018-08-24 22:05:36.077538
14	edit_work_packages	3	2018-08-24 22:05:36.080358	2018-08-24 22:05:36.080358
15	add_work_package_notes	3	2018-08-24 22:05:36.082103	2018-08-24 22:05:36.082103
16	edit_work_package_notes	3	2018-08-24 22:05:36.083187	2018-08-24 22:05:36.083187
17	edit_own_work_package_notes	3	2018-08-24 22:05:36.084597	2018-08-24 22:05:36.084597
18	delete_work_packages	3	2018-08-24 22:05:36.085841	2018-08-24 22:05:36.085841
19	manage_work_package_relations	3	2018-08-24 22:05:36.087045	2018-08-24 22:05:36.087045
20	manage_subtasks	3	2018-08-24 22:05:36.088118	2018-08-24 22:05:36.088118
21	manage_public_queries	3	2018-08-24 22:05:36.08925	2018-08-24 22:05:36.08925
22	save_queries	3	2018-08-24 22:05:36.090663	2018-08-24 22:05:36.090663
23	view_work_package_watchers	3	2018-08-24 22:05:36.091849	2018-08-24 22:05:36.091849
24	add_work_package_watchers	3	2018-08-24 22:05:36.092802	2018-08-24 22:05:36.092802
25	delete_work_package_watchers	3	2018-08-24 22:05:36.09456	2018-08-24 22:05:36.09456
26	log_time	3	2018-08-24 22:05:36.095869	2018-08-24 22:05:36.095869
27	view_time_entries	3	2018-08-24 22:05:36.09698	2018-08-24 22:05:36.09698
28	edit_time_entries	3	2018-08-24 22:05:36.098244	2018-08-24 22:05:36.098244
29	edit_own_time_entries	3	2018-08-24 22:05:36.099386	2018-08-24 22:05:36.099386
30	manage_project_activities	3	2018-08-24 22:05:36.100662	2018-08-24 22:05:36.100662
31	manage_news	3	2018-08-24 22:05:36.102232	2018-08-24 22:05:36.102232
32	comment_news	3	2018-08-24 22:05:36.10349	2018-08-24 22:05:36.10349
33	manage_wiki	3	2018-08-24 22:05:36.104578	2018-08-24 22:05:36.104578
34	manage_wiki_menu	3	2018-08-24 22:05:36.105605	2018-08-24 22:05:36.105605
35	rename_wiki_pages	3	2018-08-24 22:05:36.10673	2018-08-24 22:05:36.10673
36	change_wiki_parent_page	3	2018-08-24 22:05:36.107973	2018-08-24 22:05:36.107973
37	delete_wiki_pages	3	2018-08-24 22:05:36.109798	2018-08-24 22:05:36.109798
38	view_wiki_pages	3	2018-08-24 22:05:36.112383	2018-08-24 22:05:36.112383
39	export_wiki_pages	3	2018-08-24 22:05:36.113932	2018-08-24 22:05:36.113932
40	view_wiki_edits	3	2018-08-24 22:05:36.11557	2018-08-24 22:05:36.11557
41	edit_wiki_pages	3	2018-08-24 22:05:36.117251	2018-08-24 22:05:36.117251
42	delete_wiki_pages_attachments	3	2018-08-24 22:05:36.118863	2018-08-24 22:05:36.118863
43	protect_wiki_pages	3	2018-08-24 22:05:36.120137	2018-08-24 22:05:36.120137
44	list_attachments	3	2018-08-24 22:05:36.121224	2018-08-24 22:05:36.121224
45	browse_repository	3	2018-08-24 22:05:36.122237	2018-08-24 22:05:36.122237
46	commit_access	3	2018-08-24 22:05:36.123412	2018-08-24 22:05:36.123412
47	manage_repository	3	2018-08-24 22:05:36.124651	2018-08-24 22:05:36.124651
48	view_changesets	3	2018-08-24 22:05:36.126563	2018-08-24 22:05:36.126563
49	view_commit_author_statistics	3	2018-08-24 22:05:36.129779	2018-08-24 22:05:36.129779
50	manage_boards	3	2018-08-24 22:05:36.131371	2018-08-24 22:05:36.131371
51	add_messages	3	2018-08-24 22:05:36.132547	2018-08-24 22:05:36.132547
52	edit_messages	3	2018-08-24 22:05:36.133611	2018-08-24 22:05:36.133611
53	edit_own_messages	3	2018-08-24 22:05:36.134693	2018-08-24 22:05:36.134693
54	delete_messages	3	2018-08-24 22:05:36.136055	2018-08-24 22:05:36.136055
55	delete_own_messages	3	2018-08-24 22:05:36.137336	2018-08-24 22:05:36.137336
56	view_calendar	3	2018-08-24 22:05:36.138539	2018-08-24 22:05:36.138539
57	view_project_associations	3	2018-08-24 22:05:36.13975	2018-08-24 22:05:36.13975
58	edit_project_associations	3	2018-08-24 22:05:36.141008	2018-08-24 22:05:36.141008
59	delete_project_associations	3	2018-08-24 22:05:36.141973	2018-08-24 22:05:36.141973
60	view_timelines	3	2018-08-24 22:05:36.143063	2018-08-24 22:05:36.143063
61	edit_timelines	3	2018-08-24 22:05:36.144707	2018-08-24 22:05:36.144707
62	delete_timelines	3	2018-08-24 22:05:36.146119	2018-08-24 22:05:36.146119
63	view_reportings	3	2018-08-24 22:05:36.148224	2018-08-24 22:05:36.148224
64	edit_reportings	3	2018-08-24 22:05:36.149446	2018-08-24 22:05:36.149446
65	delete_reportings	3	2018-08-24 22:05:36.15071	2018-08-24 22:05:36.15071
66	manage_documents	3	2018-08-24 22:05:36.151951	2018-08-24 22:05:36.151951
67	view_documents	3	2018-08-24 22:05:36.153142	2018-08-24 22:05:36.153142
68	view_own_hourly_rate	3	2018-08-24 22:05:36.154138	2018-08-24 22:05:36.154138
69	view_hourly_rates	3	2018-08-24 22:05:36.155136	2018-08-24 22:05:36.155136
70	edit_own_hourly_rate	3	2018-08-24 22:05:36.156415	2018-08-24 22:05:36.156415
71	edit_hourly_rates	3	2018-08-24 22:05:36.157645	2018-08-24 22:05:36.157645
72	view_cost_rates	3	2018-08-24 22:05:36.159551	2018-08-24 22:05:36.159551
73	log_own_costs	3	2018-08-24 22:05:36.161351	2018-08-24 22:05:36.161351
74	log_costs	3	2018-08-24 22:05:36.163286	2018-08-24 22:05:36.163286
75	edit_own_cost_entries	3	2018-08-24 22:05:36.16466	2018-08-24 22:05:36.16466
76	edit_cost_entries	3	2018-08-24 22:05:36.165806	2018-08-24 22:05:36.165806
77	view_cost_objects	3	2018-08-24 22:05:36.166879	2018-08-24 22:05:36.166879
78	view_cost_entries	3	2018-08-24 22:05:36.167953	2018-08-24 22:05:36.167953
79	view_own_cost_entries	3	2018-08-24 22:05:36.169116	2018-08-24 22:05:36.169116
80	edit_cost_objects	3	2018-08-24 22:05:36.170256	2018-08-24 22:05:36.170256
81	view_own_time_entries	3	2018-08-24 22:05:36.171382	2018-08-24 22:05:36.171382
84	create_meetings	3	2018-08-24 22:05:36.174895	2018-08-24 22:05:36.174895
85	edit_meetings	3	2018-08-24 22:05:36.176736	2018-08-24 22:05:36.176736
86	delete_meetings	3	2018-08-24 22:05:36.179953	2018-08-24 22:05:36.179953
87	meetings_send_invite	3	2018-08-24 22:05:36.181527	2018-08-24 22:05:36.181527
88	view_meetings	3	2018-08-24 22:05:36.182836	2018-08-24 22:05:36.182836
89	create_meeting_agendas	3	2018-08-24 22:05:36.183826	2018-08-24 22:05:36.183826
90	close_meeting_agendas	3	2018-08-24 22:05:36.184929	2018-08-24 22:05:36.184929
91	send_meeting_agendas_notification	3	2018-08-24 22:05:36.186101	2018-08-24 22:05:36.186101
92	send_meeting_agendas_icalendar	3	2018-08-24 22:05:36.187187	2018-08-24 22:05:36.187187
93	create_meeting_minutes	3	2018-08-24 22:05:36.188585	2018-08-24 22:05:36.188585
94	send_meeting_minutes_notification	3	2018-08-24 22:05:36.18978	2018-08-24 22:05:36.18978
95	view_master_backlog	3	2018-08-24 22:05:36.191012	2018-08-24 22:05:36.191012
96	view_taskboards	3	2018-08-24 22:05:36.192039	2018-08-24 22:05:36.192039
97	update_sprints	3	2018-08-24 22:05:36.193872	2018-08-24 22:05:36.193872
98	view_work_packages	4	2018-08-24 22:05:36.228959	2018-08-24 22:05:36.228959
99	export_work_packages	4	2018-08-24 22:05:36.231651	2018-08-24 22:05:36.231651
100	add_work_packages	4	2018-08-24 22:05:36.232868	2018-08-24 22:05:36.232868
101	move_work_packages	4	2018-08-24 22:05:36.233963	2018-08-24 22:05:36.233963
102	edit_work_packages	4	2018-08-24 22:05:36.23497	2018-08-24 22:05:36.23497
103	add_work_package_notes	4	2018-08-24 22:05:36.236026	2018-08-24 22:05:36.236026
104	edit_own_work_package_notes	4	2018-08-24 22:05:36.237178	2018-08-24 22:05:36.237178
107	manage_public_queries	4	2018-08-24 22:05:36.241262	2018-08-24 22:05:36.241262
108	save_queries	4	2018-08-24 22:05:36.242307	2018-08-24 22:05:36.242307
109	view_work_package_watchers	4	2018-08-24 22:05:36.243521	2018-08-24 22:05:36.243521
105	manage_work_package_relations	\N	2018-08-24 22:05:36.238323	2018-08-24 22:05:36.238323
106	manage_subtasks	\N	2018-08-24 22:05:36.23983	2018-08-24 22:05:36.23983
110	add_work_package_watchers	4	2018-08-24 22:05:36.246456	2018-08-24 22:05:36.246456
111	delete_work_package_watchers	4	2018-08-24 22:05:36.249339	2018-08-24 22:05:36.249339
112	view_calendar	4	2018-08-24 22:05:36.250685	2018-08-24 22:05:36.250685
113	comment_news	4	2018-08-24 22:05:36.251807	2018-08-24 22:05:36.251807
114	manage_news	4	2018-08-24 22:05:36.252895	2018-08-24 22:05:36.252895
115	log_time	4	2018-08-24 22:05:36.254014	2018-08-24 22:05:36.254014
116	view_time_entries	4	2018-08-24 22:05:36.255252	2018-08-24 22:05:36.255252
117	view_own_time_entries	4	2018-08-24 22:05:36.256679	2018-08-24 22:05:36.256679
118	edit_own_time_entries	4	2018-08-24 22:05:36.257975	2018-08-24 22:05:36.257975
119	view_project_associations	4	2018-08-24 22:05:36.259263	2018-08-24 22:05:36.259263
120	view_timelines	4	2018-08-24 22:05:36.261384	2018-08-24 22:05:36.261384
121	edit_timelines	4	2018-08-24 22:05:36.263339	2018-08-24 22:05:36.263339
122	delete_timelines	4	2018-08-24 22:05:36.26464	2018-08-24 22:05:36.26464
123	view_reportings	4	2018-08-24 22:05:36.265814	2018-08-24 22:05:36.265814
124	edit_reportings	4	2018-08-24 22:05:36.266829	2018-08-24 22:05:36.266829
125	delete_reportings	4	2018-08-24 22:05:36.267957	2018-08-24 22:05:36.267957
126	manage_wiki	4	2018-08-24 22:05:36.269217	2018-08-24 22:05:36.269217
127	manage_wiki_menu	4	2018-08-24 22:05:36.270431	2018-08-24 22:05:36.270431
128	rename_wiki_pages	4	2018-08-24 22:05:36.271614	2018-08-24 22:05:36.271614
129	change_wiki_parent_page	4	2018-08-24 22:05:36.272629	2018-08-24 22:05:36.272629
130	delete_wiki_pages	4	2018-08-24 22:05:36.273683	2018-08-24 22:05:36.273683
131	view_wiki_pages	4	2018-08-24 22:05:36.274718	2018-08-24 22:05:36.274718
132	export_wiki_pages	4	2018-08-24 22:05:36.275664	2018-08-24 22:05:36.275664
133	view_wiki_edits	4	2018-08-24 22:05:36.276734	2018-08-24 22:05:36.276734
134	edit_wiki_pages	4	2018-08-24 22:05:36.278633	2018-08-24 22:05:36.278633
135	delete_wiki_pages_attachments	4	2018-08-24 22:05:36.280412	2018-08-24 22:05:36.280412
136	protect_wiki_pages	4	2018-08-24 22:05:36.281796	2018-08-24 22:05:36.281796
137	list_attachments	4	2018-08-24 22:05:36.283034	2018-08-24 22:05:36.283034
138	add_messages	4	2018-08-24 22:05:36.284198	2018-08-24 22:05:36.284198
139	edit_own_messages	4	2018-08-24 22:05:36.285309	2018-08-24 22:05:36.285309
140	delete_own_messages	4	2018-08-24 22:05:36.286598	2018-08-24 22:05:36.286598
141	browse_repository	4	2018-08-24 22:05:36.287739	2018-08-24 22:05:36.287739
142	view_changesets	4	2018-08-24 22:05:36.289019	2018-08-24 22:05:36.289019
143	commit_access	4	2018-08-24 22:05:36.290578	2018-08-24 22:05:36.290578
144	view_commit_author_statistics	4	2018-08-24 22:05:36.291778	2018-08-24 22:05:36.291778
145	view_members	4	2018-08-24 22:05:36.293778	2018-08-24 22:05:36.293778
146	view_documents	4	2018-08-24 22:05:36.295893	2018-08-24 22:05:36.295893
147	manage_documents	4	2018-08-24 22:05:36.298288	2018-08-24 22:05:36.298288
148	view_master_backlog	4	2018-08-24 22:05:36.300176	2018-08-24 22:05:36.300176
149	view_taskboards	4	2018-08-24 22:05:36.302038	2018-08-24 22:05:36.302038
150	view_work_packages	5	2018-08-24 22:05:36.32342	2018-08-24 22:05:36.32342
151	add_work_package_notes	5	2018-08-24 22:05:36.324808	2018-08-24 22:05:36.324808
152	edit_own_work_package_notes	5	2018-08-24 22:05:36.325907	2018-08-24 22:05:36.325907
153	save_queries	5	2018-08-24 22:05:36.328786	2018-08-24 22:05:36.328786
154	view_calendar	5	2018-08-24 22:05:36.33241	2018-08-24 22:05:36.33241
155	comment_news	5	2018-08-24 22:05:36.333961	2018-08-24 22:05:36.333961
156	view_project_associations	5	2018-08-24 22:05:36.335034	2018-08-24 22:05:36.335034
157	view_timelines	5	2018-08-24 22:05:36.336033	2018-08-24 22:05:36.336033
158	view_reportings	5	2018-08-24 22:05:36.337544	2018-08-24 22:05:36.337544
159	view_wiki_pages	5	2018-08-24 22:05:36.339033	2018-08-24 22:05:36.339033
160	export_wiki_pages	5	2018-08-24 22:05:36.340272	2018-08-24 22:05:36.340272
161	list_attachments	5	2018-08-24 22:05:36.341561	2018-08-24 22:05:36.341561
162	add_messages	5	2018-08-24 22:05:36.343175	2018-08-24 22:05:36.343175
163	edit_own_messages	5	2018-08-24 22:05:36.34563	2018-08-24 22:05:36.34563
164	delete_own_messages	5	2018-08-24 22:05:36.348172	2018-08-24 22:05:36.348172
165	browse_repository	5	2018-08-24 22:05:36.349448	2018-08-24 22:05:36.349448
166	view_changesets	5	2018-08-24 22:05:36.350542	2018-08-24 22:05:36.350542
167	view_documents	5	2018-08-24 22:05:36.351688	2018-08-24 22:05:36.351688
168	view_master_backlog	5	2018-08-24 22:05:36.353222	2018-08-24 22:05:36.353222
169	view_taskboards	5	2018-08-24 22:05:36.354352	2018-08-24 22:05:36.354352
170	view_work_packages	1	2018-08-24 22:05:36.361629	2018-08-24 22:05:36.361629
171	view_calendar	1	2018-08-24 22:05:36.36473	2018-08-24 22:05:36.36473
172	comment_news	1	2018-08-24 22:05:36.367228	2018-08-24 22:05:36.367228
173	browse_repository	1	2018-08-24 22:05:36.36916	2018-08-24 22:05:36.36916
174	view_changesets	1	2018-08-24 22:05:36.370839	2018-08-24 22:05:36.370839
175	view_wiki_pages	1	2018-08-24 22:05:36.372634	2018-08-24 22:05:36.372634
176	view_work_packages	2	2018-08-24 22:05:36.38129	2018-08-24 22:05:36.38129
177	browse_repository	2	2018-08-24 22:05:36.383883	2018-08-24 22:05:36.383883
178	view_changesets	2	2018-08-24 22:05:36.385581	2018-08-24 22:05:36.385581
179	view_wiki_pages	2	2018-08-24 22:05:36.387276	2018-08-24 22:05:36.387276
180	view_own_hourly_rate	4	2018-08-24 22:05:36.400895	2018-08-24 22:05:36.400895
181	view_cost_rates	4	2018-08-24 22:05:36.403182	2018-08-24 22:05:36.403182
182	log_own_costs	4	2018-08-24 22:05:36.404862	2018-08-24 22:05:36.404862
183	edit_own_cost_entries	4	2018-08-24 22:05:36.406512	2018-08-24 22:05:36.406512
184	view_cost_objects	4	2018-08-24 22:05:36.40817	2018-08-24 22:05:36.40817
185	view_own_cost_entries	4	2018-08-24 22:05:36.411264	2018-08-24 22:05:36.411264
82	save_cost_reports	\N	2018-08-24 22:05:36.172387	2018-08-24 22:05:36.172387
83	save_private_cost_reports	\N	2018-08-24 22:05:36.173499	2018-08-24 22:05:36.173499
186	create_meetings	4	2018-08-24 22:05:36.459456	2018-08-24 22:05:36.459456
187	edit_meetings	4	2018-08-24 22:05:36.463731	2018-08-24 22:05:36.463731
188	delete_meetings	4	2018-08-24 22:05:36.465923	2018-08-24 22:05:36.465923
189	view_meetings	4	2018-08-24 22:05:36.468086	2018-08-24 22:05:36.468086
190	create_meeting_agendas	4	2018-08-24 22:05:36.470071	2018-08-24 22:05:36.470071
191	close_meeting_agendas	4	2018-08-24 22:05:36.471771	2018-08-24 22:05:36.471771
192	send_meeting_agendas_notification	4	2018-08-24 22:05:36.473958	2018-08-24 22:05:36.473958
193	send_meeting_agendas_icalendar	4	2018-08-24 22:05:36.475532	2018-08-24 22:05:36.475532
194	create_meeting_minutes	4	2018-08-24 22:05:36.478304	2018-08-24 22:05:36.478304
195	send_meeting_minutes_notification	4	2018-08-24 22:05:36.480599	2018-08-24 22:05:36.480599
196	view_meetings	5	2018-08-24 22:05:36.486504	2018-08-24 22:05:36.486504
197	add_work_packages	1	2018-08-26 19:21:08.505833	2018-08-26 19:21:08.505833
198	add_work_package_notes	1	2018-08-26 19:21:08.50807	2018-08-26 19:21:08.50807
199	edit_own_work_package_notes	1	2018-08-26 19:21:08.510176	2018-08-26 19:21:08.510176
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, name, "position", assignable, builtin, type) FROM stdin;
4	Membro	3	t	0	Role
5	Leitor	4	t	0	Role
3	Administrador	7	t	0	Role
1	Não-membro	1	t	1	Role
2	Anônimo	2	t	2	Role
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
0
20100528100562
20110211160100
20110215143061
20110817142220
20111014073606
20111114124552
20111605171865
20120214103300
20120319095930
20120319135006
20120529090411
20120605121861
20120731091543
20120731135140
20120802152122
20120809131659
20120828171423
20121004054229
20121022124254
20121030111651
20121101111303
20121114100641
20130204140624
20130214130336
20130315124655
20130325165622
20130409133700
20130409133701
20130409133702
20130409133703
20130409133704
20130409133705
20130409133706
20130409133707
20130409133708
20130409133709
20130409133710
20130409133711
20130409133712
20130409133713
20130409133714
20130409133715
20130409133717
20130409133718
20130409133719
20130409133720
20130409133721
20130409133722
20130409133723
20130529145329
20130611154020
20130612104243
20130612120042
20130613075253
20130619081234
20130620082322
20130625094113
20130625094710
20130625124242
20130628092725
20130709084751
20130710145350
20130717134318
20130719133922
20130722154555
20130723092240
20130723134527
20130724143418
20130729114110
20130731151542
20130806075000
20130807081927
20130807082645
20130807083715
20130807083716
20130807084417
20130807084708
20130807085108
20130807085245
20130807085430
20130807085604
20130807085714
20130807141542
20130813062401
20130813062513
20130813062523
20130814130142
20130814131242
20130822113942
20130828093647
20130829084747
20130903172842
20130904181242
20130916094339
20130916094369
20130916094370
20130916123916
20130917101922
20130917122118
20130917131710
20130918084158
20130918084919
20130918111753
20130918160542
20130918180542
20130919092624
20130919105841
20130919145142
20130920081120
20130920081135
20130920085055
20130920090201
20130920090641
20130920092800
20130920093823
20130920094524
20130920095747
20130920142714
20130920150143
20130924091342
20130924093842
20130924114042
20130925090243
20131001075217
20131001105659
20131001132542
20131004141959
20131007062401
20131009083648
20131015064141
20131015121430
20131016075650
20131017064039
20131018134525
20131018134530
20131018134545
20131018134590
20131024115743
20131024140048
20131031170857
20131101125921
20131108124300
20131114132911
20131115155147
20131126112911
20131127120534
20131202094511
20131210113056
20131216171110
20131219084934
20140113132617
20140122161742
20140127134733
20140129103924
20140203141127
20140207134248
20140311120609
20140320140001
20140411142338
20140414141459
20140429152018
20140430125956
20140602112515
20140610125207
20141215104802
20150116095004
20150623151337
20150629075221
20150716133712
20150716163704
20150729145732
20150819143300
20150820133700
20150827133700
20151005113102
20151028063433
20151116110245
20160125143638
20160331190036
20160419103544
20160503150449
20160504064737
20160504070128
20160726090624
20160803094931
20160824121151
20160829225633
20160907113604
20160913081236
20160913125802
20160914124514
20160926102618
20161017102547
20161025135400
20161102160032
20161116130657
20161213191919
20161219134700
20170116105342
20170117112648
20170222094032
20170308120915
20170330084810
20170404110156
20170407074032
20170411065946
20170418064453
20170420082944
20170421071136
20170421071137
20170602073043
20170614131555
20170703075208
20170705134348
20170818063404
20170829095701
20171023190036
20171106074835
20171218205557
20171219145752
20180105130053
20180108132929
20180116065518
20180125082205
20180524113516
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sessions (id, session_id, data, created_at, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.settings (id, name, value, updated_on) FROM stdin;
90	accessibility_mode_for_anonymous	1	2018-08-26 15:00:34.555142
2	work_package_list_default_columns	---\n- id\n- subject\n- type\n- status\n- assigned_to\n- updated_at\n	2018-08-24 22:05:13.468456
3	notified_events	---\n- work_package_added\n- work_package_updated\n- work_package_note_added\n- status_updated\n- work_package_priority_updated\n- news_added\n- news_comment_added\n- file_added\n- message_posted\n- wiki_content_added\n- wiki_content_updated\n	2018-08-24 22:05:13.475404
4	work_package_done_ratio	field	2018-08-24 22:05:13.48651
5	enabled_scm	---\n- subversion\n- git\n	2018-08-24 22:05:17.304224
6	email_delivery_method		2018-08-24 22:05:57.519549
7	sendmail_location	/usr/sbin/sendmail	2018-08-24 22:05:57.527699
8	sendmail_arguments	-i	2018-08-24 22:05:57.534213
9	smtp_openssl_verify_mode	none	2018-08-24 22:05:57.541501
10	smtp_enable_starttls_auto	0	2018-08-24 22:05:57.552401
11	smtp_address		2018-08-24 22:05:57.563652
12	smtp_port	587	2018-08-24 22:05:57.574096
13	smtp_domain	example.com	2018-08-24 22:05:57.585267
14	smtp_authentication	plain	2018-08-24 22:05:57.591106
15	smtp_user_name		2018-08-24 22:05:57.599955
16	smtp_password		2018-08-24 22:05:57.605581
17	additional_footer_content		2018-08-24 22:05:57.616004
19	app_subtitle	Project management	2018-08-24 22:05:57.627843
20	brute_force_block_minutes	30	2018-08-24 22:05:57.634891
21	brute_force_block_after_failed_logins	20	2018-08-24 22:05:57.641483
22	consent_time		2018-08-24 22:05:57.649523
23	consent_info	---\nen: |-\n  h2. Consent\n\n  You need to agree to the privacy and security policy of this OpenProject instance.\n	2018-08-24 22:05:57.655078
24	consent_required	0	2018-08-24 22:05:57.663899
25	consent_decline_mail		2018-08-24 22:05:57.669803
26	welcome_title		2018-08-24 22:05:57.676461
27	welcome_text		2018-08-24 22:05:57.685649
28	welcome_on_homescreen	0	2018-08-24 22:05:57.690915
29	welcome_on_projects_page	0	2018-08-24 22:05:57.700069
30	log_requesting_user	0	2018-08-24 22:05:57.705469
31	login_required	0	2018-08-24 22:05:57.714001
32	self_registration	2	2018-08-24 22:05:57.720164
33	lost_password	1	2018-08-24 22:05:57.728808
34	password_min_length	10	2018-08-24 22:05:57.735097
35	password_active_rules	---\n- lowercase\n- uppercase\n- numeric\n- special\n	2018-08-24 22:05:57.740847
36	password_min_adhered_rules	0	2018-08-24 22:05:57.749905
37	password_count_former_banned	0	2018-08-24 22:05:57.755491
38	password_days_valid	0	2018-08-24 22:05:57.764037
39	software_name	OpenProject	2018-08-24 22:05:57.770035
40	software_url	https://www.openproject.org/	2018-08-24 22:05:57.775566
41	attachment_max_size	5120	2018-08-24 22:05:57.783414
42	work_packages_export_limit	500	2018-08-24 22:05:57.789604
43	activity_days_default	30	2018-08-24 22:05:57.79742
44	per_page_options	20, 100	2018-08-24 22:05:57.802992
45	mail_from	openproject@example.net	2018-08-24 22:05:57.809704
46	bcc_recipients	1	2018-08-24 22:05:57.817878
47	plain_text_mail	0	2018-08-24 22:05:57.823725
48	text_formatting	textile	2018-08-24 22:05:57.833517
50	wiki_compression		2018-08-24 22:05:57.849044
53	email_login	0	2018-08-24 22:05:57.869939
54	host_name	localhost:3000	2018-08-24 22:05:57.876907
55	protocol	http	2018-08-24 22:05:57.883732
56	feeds_enabled	1	2018-08-24 22:05:57.889511
57	feeds_limit	15	2018-08-24 22:05:57.899951
58	file_max_size_displayed	512	2018-08-24 22:05:57.90725
59	diff_max_lines_displayed	1500	2018-08-24 22:05:57.915976
60	autofetch_changesets	1	2018-08-24 22:05:57.921942
61	sys_api_enabled	0	2018-08-24 22:05:57.931868
62	sys_api_key		2018-08-24 22:05:57.93808
63	repository_authentication_caching_enabled	1	2018-08-24 22:05:57.947952
64	repositories_automatic_managed_vendor		2018-08-24 22:05:57.957138
65	commit_ref_keywords	refs,references,IssueID	2018-08-24 22:05:57.967207
66	commit_fix_keywords	fixes,closes	2018-08-24 22:05:57.973403
67	commit_fix_status_id	13	2018-08-24 22:05:57.984228
68	commit_fix_done_ratio	100	2018-08-24 22:05:57.992353
69	commit_logtime_enabled	0	2018-08-24 22:05:58.001176
70	commit_logtime_activity_id	0	2018-08-24 22:05:58.006885
71	autologin	0	2018-08-24 22:05:58.016977
72	date_format		2018-08-24 22:05:58.02355
73	time_format		2018-08-24 22:05:58.031799
74	user_format	firstname_lastname	2018-08-24 22:05:58.038212
75	cross_project_work_package_relations	1	2018-08-24 22:05:58.047546
76	work_package_group_assignment	1	2018-08-24 22:05:58.053922
77	mail_handler_body_delimiters		2018-08-24 22:05:58.064088
78	mail_handler_body_delimiter_regex		2018-08-24 22:05:58.071191
79	mail_handler_api_enabled	0	2018-08-24 22:05:58.080989
80	mail_handler_api_key		2018-08-24 22:05:58.087771
81	work_package_list_summable_columns	---\n- estimated_hours\n	2018-08-24 22:05:58.096013
82	display_subprojects_work_packages	1	2018-08-24 22:05:58.103869
83	default_projects_public	0	2018-08-24 22:05:58.11297
84	default_projects_modules	---\n- calendar\n- work_package_tracking\n- news\n- time_tracking\n- wiki\n- costs_module\n- reporting_module\n- meetings\n- backlogs\n	2018-08-24 22:05:58.122034
85	new_project_user_role_id	3	2018-08-24 22:05:58.131289
86	sequential_project_identifiers	0	2018-08-24 22:05:58.137201
87	repositories_encodings		2018-08-24 22:05:58.144485
88	commit_logs_encoding	UTF-8	2018-08-24 22:05:58.152508
89	repository_log_display_limit	100	2018-08-24 22:05:58.159624
91	emails_footer	---\nen: |-\n  You have received this notification because you have either subscribed to it, or are involved in it.\n  To change your notification preferences, please click here: http://hostname/my/account\n	2018-08-24 22:05:58.174002
92	start_of_week		2018-08-24 22:05:58.183581
93	rest_api_enabled	1	2018-08-24 22:05:58.190302
94	session_ttl_enabled	0	2018-08-24 22:05:58.199711
95	session_ttl	120	2018-08-24 22:05:58.206
96	default_notification_option	only_my_events	2018-08-24 22:05:58.217346
97	emails_header	---\nen: ''\n	2018-08-24 22:05:58.224748
98	work_package_startdate_is_adddate	1	2018-08-24 22:05:58.235107
99	users_deletable_by_admins	0	2018-08-24 22:05:58.241925
100	users_deletable_by_self	0	2018-08-24 22:05:58.250503
101	journal_aggregation_time_minutes	5	2018-08-24 22:05:58.256756
102	registration_footer	---\nen: \n	2018-08-24 22:05:58.266411
103	repository_storage_cache_minutes	720	2018-08-24 22:05:58.27322
104	repository_truncate_at	500	2018-08-24 22:05:58.283015
49	cache_formatted_text	1	2018-08-25 00:42:27.6393
51	available_languages	---\n- pt\n- pt-BR\n	2018-08-25 00:42:53.84968
52	default_language	pt-BR	2018-08-25 00:42:53.889847
18	app_title	ITesão	2018-08-26 15:00:13.092144
105	repository_checkout_data	---\ngit:\n  enabled: 0\nsubversion:\n  enabled: 0\n	2018-08-24 22:05:58.290244
106	api_max_page_size	500	2018-08-24 22:05:58.301608
107	plugin_openproject_openid_connect		2018-08-24 22:05:58.308199
108	plugin_openproject_costs	---\ncosts_currency: EUR\ncosts_currency_format: "%n %u"\n	2018-08-24 22:05:58.317283
109	plugin_openproject_avatars	---\n:enable_gravatars: true\n:gravatar_default: mm\n:enable_local_avatars: true\n	2018-08-24 22:05:58.32332
110	plugin_openproject_two_factor_authentication	---\n:active_strategies: []\n:enforced: false\n:allow_remember_for_days: 0\n	2018-08-24 22:05:58.334638
111	plugin_openproject_ldap_groups	---\n:group_base: \n	2018-08-24 22:05:58.341829
1	plugin_openproject_backlogs	---\nstory_types:\n- 4\n- 5\n- 6\n- 7\ntask_type: 1\npoints_burn_direction: up\nwiki_template: ''\n	2018-08-24 22:05:58.545468
\.


--
-- Data for Name: statuses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.statuses (id, name, is_closed, is_default, "position", default_done_ratio) FROM stdin;
1	Novo	f	t	1	\N
2	Em análise	f	f	2	\N
3	Analizado	f	f	3	\N
4	Confirmado	f	f	4	\N
5	Em agendamento	f	f	5	\N
6	Agendado	f	f	6	\N
7	Em andamento	f	f	7	\N
8	Em desenvolvimento	f	f	8	\N
9	Desenvolvido	f	f	9	\N
10	Em validação	f	f	10	\N
11	Validado	f	f	11	\N
12	Invalidado	f	f	12	\N
13	Fechado	t	f	13	\N
14	Aguardando	f	f	14	\N
15	Recusado	t	f	15	\N
\.


--
-- Data for Name: time_entries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.time_entries (id, project_id, user_id, work_package_id, hours, comments, activity_id, spent_on, tyear, tmonth, tweek, created_on, updated_on, overridden_costs, costs, rate_id) FROM stdin;
\.


--
-- Data for Name: time_entry_journals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.time_entry_journals (id, journal_id, project_id, user_id, work_package_id, hours, comments, activity_id, spent_on, tyear, tmonth, tweek, overridden_costs, costs, rate_id) FROM stdin;
\.


--
-- Data for Name: timelines; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.timelines (id, name, project_id, created_at, updated_at, options) FROM stdin;
\.


--
-- Data for Name: tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tokens (id, user_id, type, value, created_on, expires_on) FROM stdin;
1	1	Token::Rss	f0bb6c43099eaa98c6de34bc7346aa21a6f6e9b9769de29ce79b589dabb7d655	2018-08-25 00:22:20.442192	\N
2	3	Token::Rss	63b47a116fe472f849b7513e7ec10b323cf1370ee7555e04b33ece2925f5d7d1	2018-08-26 19:20:22.866464	\N
\.


--
-- Data for Name: two_factor_authentication_devices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.two_factor_authentication_devices (id, type, "default", active, channel, phone_number, identifier, created_at, updated_at, last_used_at, otp_secret, user_id) FROM stdin;
\.


--
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.types (id, name, "position", is_in_roadmap, in_aggregation, is_milestone, is_default, color_id, created_at, updated_at, is_standard, attribute_groups) FROM stdin;
1	Tarefa	3	t	f	f	t	2	2018-08-24 22:05:36.819563	2018-08-26 19:22:57.523592	f	\N
4	Sugestão	6	t	f	f	t	3	2018-08-24 22:05:36.881868	2018-08-26 19:22:57.523592	f	\N
2	Marco	4	f	t	t	t	4	2018-08-24 22:05:36.84163	2018-08-26 19:22:57.523592	f	\N
3	Fase	5	f	t	f	t	1	2018-08-24 22:05:36.864131	2018-08-26 19:22:57.523592	f	\N
5	Problema	2	t	t	f	t	8	2018-08-24 22:05:36.900019	2018-08-26 19:23:00.5606	f	---\n- - :people\n  - - assignee\n    - responsible\n- - :estimates_and_time\n  - - estimated_time\n    - remaining_time\n    - spent_time\n    - story_points\n- - :details\n  - - category\n    - date\n    - percentage_done\n    - priority\n- - :other\n  - - position\n- - :costs\n  - - cost_object\n    - costs_by_type\n    - labor_costs\n    - material_costs\n    - overall_costs\n
7	Ticket	1	t	t	f	t	7	2018-08-24 22:05:36.936145	2018-08-26 19:43:40.054333	f	---\n- - :details\n  - - priority\n    - category\n    - percentage_done\n    - date\n    - responsible\n- - :other\n  - - position\n
\.


--
-- Data for Name: user_passwords; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_passwords (id, user_id, hashed_password, salt, created_at, updated_at, type) FROM stdin;
2	1	$2a$10$gLTQWvPKHx38re/h/YN8s.Q70bXnlnvWyKhilCoXwPvsIb/k/J.eC	\N	2018-08-25 00:21:53.003344	2018-08-25 00:21:53.003344	UserPassword::Bcrypt
3	3	$2a$10$uK7Ie/vmLy.yY5waqt7qRur6jVBzGBiS6TITEzFfS95zugZIwRqEu	\N	2018-08-26 19:19:28.439739	2018-08-26 19:19:28.439739	UserPassword::Bcrypt
\.


--
-- Data for Name: user_preferences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_preferences (id, user_id, others, hide_mail, time_zone, impaired) FROM stdin;
1	1	---\n:no_self_notified: true\n:backlogs_versions_default_fold_state: open\n	t	\N	f
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, login, firstname, lastname, mail, admin, status, last_login_on, language, auth_source_id, created_on, updated_on, type, identity_url, mail_notification, first_login, force_password_change, failed_login_count, last_failed_login_on, consented_at) FROM stdin;
2			Anonymous		f	0	\N		\N	2018-08-24 22:05:59.894737	2018-08-24 22:05:59.894737	AnonymousUser	\N	only_my_events	t	f	0	\N	\N
3	memuller	matheus	muller	hello@memuller.com	f	1	2018-08-26 21:43:49.712502		\N	2018-08-26 19:19:28.430402	2018-08-26 21:43:49.725938	User	\N	only_my_events	f	f	0	2018-08-26 19:19:49.446225	\N
1	admin	OpenProject	Admin	admin@example.net	t	1	2018-08-26 21:59:31.545052	en	\N	2018-08-24 22:05:58.686808	2018-08-26 21:59:31.55976	User	\N	only_my_events	f	f	0	2018-08-25 00:21:31.329396	\N
\.


--
-- Data for Name: version_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.version_settings (id, project_id, version_id, display, created_at, updated_at) FROM stdin;
1	1	1	1	2018-08-24 22:05:59.65354	2018-08-24 22:05:59.65354
2	1	2	1	2018-08-24 22:05:59.659115	2018-08-24 22:05:59.659115
3	1	3	1	2018-08-24 22:05:59.667636	2018-08-24 22:05:59.667636
4	1	4	3	2018-08-24 22:05:59.672443	2018-08-24 22:05:59.672443
5	1	5	2	2018-08-24 22:05:59.680049	2018-08-24 22:05:59.680049
6	1	6	2	2018-08-24 22:05:59.685571	2018-08-24 22:05:59.685571
7	1	7	3	2018-08-24 22:05:59.689694	2018-08-24 22:05:59.689694
\.


--
-- Data for Name: versions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.versions (id, project_id, name, description, effective_date, created_on, updated_on, wiki_page_title, status, sharing, start_date) FROM stdin;
1	1	1.0		\N	2018-08-24 22:05:59.433394	2018-08-24 22:05:59.452588	\N	open	none	\N
2	1	1.1		\N	2018-08-24 22:05:59.465655	2018-08-24 22:05:59.477148	\N	open	none	\N
3	1	2.0		\N	2018-08-24 22:05:59.487178	2018-08-24 22:05:59.505879	\N	open	none	\N
4	1	Product Backlog		\N	2018-08-24 22:05:59.51761	2018-08-24 22:05:59.536114	\N	open	none	\N
5	1	Sprint 1		\N	2018-08-24 22:05:59.545391	2018-08-24 22:05:59.561747	\N	open	none	\N
6	1	Sprint 2		\N	2018-08-24 22:05:59.57024	2018-08-24 22:05:59.583884	\N	open	none	\N
7	1	Wish List		\N	2018-08-24 22:05:59.590022	2018-08-24 22:05:59.603448	\N	open	none	\N
\.


--
-- Data for Name: watchers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.watchers (id, watchable_type, watchable_id, user_id) FROM stdin;
1	Meeting	1	1
2	Meeting	2	1
\.


--
-- Data for Name: webhooks_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.webhooks_events (id, name, webhooks_webhook_id) FROM stdin;
\.


--
-- Data for Name: webhooks_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.webhooks_logs (id, webhooks_webhook_id, event_name, url, request_headers, request_body, response_code, response_headers, response_body, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: webhooks_projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.webhooks_projects (id, project_id, webhooks_webhook_id) FROM stdin;
\.


--
-- Data for Name: webhooks_webhooks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.webhooks_webhooks (id, name, url, description, secret, enabled, all_projects, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: wiki_content_journals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wiki_content_journals (id, journal_id, page_id, author_id, text) FROM stdin;
1	8	1	1	h1. wiki
\.


--
-- Data for Name: wiki_content_versions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wiki_content_versions (id, wiki_content_id, page_id, author_id, data, compression, comments, updated_on, version) FROM stdin;
\.


--
-- Data for Name: wiki_contents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wiki_contents (id, page_id, author_id, text, updated_on, lock_version) FROM stdin;
1	1	1	h1. wiki	2018-08-25 19:22:24.137303	0
\.


--
-- Data for Name: wiki_pages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wiki_pages (id, wiki_id, title, created_on, protected, parent_id, slug) FROM stdin;
1	1	Principal	2018-08-25 19:22:24.016626	f	\N	principal
\.


--
-- Data for Name: wiki_redirects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wiki_redirects (id, wiki_id, title, redirects_to, created_on) FROM stdin;
\.


--
-- Data for Name: wikis; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wikis (id, project_id, start_page, status) FROM stdin;
1	1	Wiki	1
\.


--
-- Data for Name: work_package_journals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.work_package_journals (id, journal_id, type_id, project_id, subject, description, due_date, category_id, status_id, assigned_to_id, priority_id, fixed_version_id, author_id, done_ratio, estimated_hours, start_date, parent_id, responsible_id, cost_object_id, story_points, remaining_hours) FROM stdin;
1	1	2	1	Project kick-off	\N	2018-08-20	\N	13	1	8	\N	1	0	\N	2018-08-20	\N	\N	\N	\N	\N
2	2	3	1	Project planning	\N	2018-08-30	\N	7	1	8	\N	1	0	\N	2018-08-21	\N	\N	\N	\N	\N
3	3	3	1	Development	\N	2018-09-19	\N	6	1	8	\N	1	0	\N	2018-08-31	\N	\N	\N	\N	\N
4	4	4	1	Great feature	\N	2018-09-10	\N	9	1	8	5	1	0	\N	2018-08-31	3	\N	\N	\N	\N
5	5	4	1	Best feature	\N	2018-09-16	\N	3	1	8	6	1	0	\N	2018-09-11	3	\N	\N	\N	\N
6	6	7	1	Terrible bug	\N	2018-09-19	\N	4	1	8	5	1	0	\N	2018-09-17	3	\N	\N	\N	\N
7	7	2	1	Go-Live	\N	2018-09-20	\N	6	1	8	\N	1	0	\N	2018-09-20	\N	\N	\N	\N	\N
8	10	7	1	pegou fogo meu pc	e agora porra	\N	\N	1	\N	8	\N	3	0	\N	\N	\N	\N	\N	\N	\N
9	11	5	1	Combustão espontânea de computadores	computers are just suddenly burning up\nsnake, get in there!	\N	\N	1	\N	8	\N	1	0	\N	\N	\N	\N	\N	\N	\N
10	12	2	1	Mudar padrões login	\N	\N	\N	1	\N	8	\N	1	0	\N	\N	\N	\N	\N	\N	\N
11	13	1	1	Documentar mudança	\N	\N	\N	1	\N	8	\N	1	0	\N	\N	\N	\N	\N	\N	\N
12	14	1	1	Implementar regra no AD	\N	\N	\N	1	\N	8	\N	1	0	\N	\N	\N	\N	\N	\N	\N
13	15	7	1	Checar emails duplicados	\N	\N	\N	1	\N	9	\N	1	0	\N	\N	\N	\N	\N	\N	\N
14	16	2	1	Mudar padrões login	\N	2018-08-31	\N	1	\N	8	\N	1	0	\N	2018-08-31	\N	\N	\N	\N	\N
15	17	7	1	Não consigo entrar no Facebook	dsadsadas	\N	\N	1	\N	8	\N	1	100	\N	\N	\N	\N	\N	\N	\N
16	18	7	1	Não consigo entrar no Facebook	dsadsadas	\N	\N	13	\N	8	\N	1	100	\N	\N	\N	\N	\N	\N	\N
17	19	7	1	Não consigo entrar no Facebook	dsadsadas	\N	\N	13	\N	8	\N	1	100	\N	2018-08-26	\N	\N	\N	\N	\N
18	20	7	1	Não consigo entrar no Facebook	dsadsadas	\N	\N	13	\N	8	\N	1	100	\N	2018-08-25	\N	\N	\N	\N	\N
19	21	7	1	Não consigo entrar no Facebook	dsadsadas	2018-08-26	\N	13	\N	8	\N	1	100	\N	2018-08-25	\N	\N	\N	\N	\N
20	22	7	1	o meu mouse pegou fogo	tava usando e meu mouse pegou fogo!!1	\N	\N	1	\N	10	\N	1	0	\N	2018-08-25	\N	\N	\N	\N	\N
21	23	7	1	o meu mouse pegou fogo	tava usando e meu mouse pegou fogo!!1	\N	\N	8	\N	10	\N	1	0	\N	2018-08-25	\N	\N	\N	\N	\N
22	24	7	1	o meu mouse pegou fogo	tava usando e meu mouse pegou fogo!!1	\N	\N	8	\N	10	\N	1	0	\N	2018-08-25	\N	\N	\N	\N	\N
23	25	5	1	Combustão espontânea de computadores	computers are just suddenly burning up\nsnake, get in there!	2018-08-25	\N	1	\N	8	\N	1	0	\N	2018-08-25	\N	\N	\N	\N	\N
\.


--
-- Data for Name: work_packages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.work_packages (id, type_id, project_id, subject, description, due_date, category_id, status_id, assigned_to_id, priority_id, fixed_version_id, author_id, lock_version, done_ratio, estimated_hours, created_at, updated_at, start_date, responsible_id, "position", story_points, remaining_hours, cost_object_id) FROM stdin;
1	2	1	Project kick-off	\N	2018-08-20	\N	13	1	8	\N	1	0	0	\N	2018-08-24 22:05:59.799747	2018-08-24 22:06:00.006789	2018-08-20	\N	1	\N	\N	\N
11	1	1	Documentar mudança	\N	\N	\N	1	\N	8	\N	1	0	0	\N	2018-08-26 19:29:42.642334	2018-08-26 19:29:42.680521	\N	\N	1	\N	\N	\N
12	1	1	Implementar regra no AD	\N	\N	\N	1	\N	8	\N	1	0	0	\N	2018-08-26 19:30:00.192561	2018-08-26 19:30:00.227448	\N	\N	1	\N	\N	\N
13	7	1	Checar emails duplicados	\N	\N	\N	1	\N	9	\N	1	0	0	\N	2018-08-26 19:30:28.131377	2018-08-26 19:30:28.174074	\N	\N	1	\N	\N	\N
10	2	1	Mudar padrões login	\N	2018-08-31	\N	1	\N	8	\N	1	3	0	\N	2018-08-26 19:29:21.301066	2018-08-26 19:35:20.087365	2018-08-31	\N	1	\N	\N	\N
14	7	1	Não consigo entrar no Facebook	dsadsadas	2018-08-26	\N	13	\N	8	\N	1	4	100	\N	2018-08-26 19:37:43.763498	2018-08-26 19:44:03.753792	2018-08-25	\N	1	\N	\N	\N
8	7	1	pegou fogo meu pc	e agora porra	\N	\N	1	\N	8	\N	3	1	0	\N	2018-08-26 19:23:42.408519	2018-08-26 19:45:06.383295	\N	\N	1	\N	\N	\N
15	7	1	o meu mouse pegou fogo	tava usando e meu mouse pegou fogo!!1	\N	\N	8	\N	10	\N	1	2	0	\N	2018-08-26 20:16:56.518159	2018-08-26 20:18:09.981329	2018-08-25	\N	1	\N	\N	\N
9	5	1	Combustão espontânea de computadores	computers are just suddenly burning up\nsnake, get in there!	2018-08-25	\N	1	\N	8	\N	1	1	0	\N	2018-08-26 19:26:49.717427	2018-08-26 20:18:10.074019	2018-08-25	\N	1	\N	\N	\N
\.


--
-- Data for Name: workflows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.workflows (id, type_id, old_status_id, new_status_id, role_id, assignee, author) FROM stdin;
1	1	1	1	3	f	f
2	1	1	1	4	f	f
3	1	1	7	3	f	f
4	1	1	7	4	f	f
5	1	1	14	3	f	f
6	1	1	14	4	f	f
7	1	1	15	3	f	f
8	1	1	15	4	f	f
9	1	1	13	3	f	f
10	1	1	13	4	f	f
11	1	7	1	3	f	f
12	1	7	1	4	f	f
13	1	7	7	3	f	f
14	1	7	7	4	f	f
15	1	7	14	3	f	f
16	1	7	14	4	f	f
17	1	7	15	3	f	f
18	1	7	15	4	f	f
19	1	7	13	3	f	f
20	1	7	13	4	f	f
21	1	14	1	3	f	f
22	1	14	1	4	f	f
23	1	14	7	3	f	f
24	1	14	7	4	f	f
25	1	14	14	3	f	f
26	1	14	14	4	f	f
27	1	14	15	3	f	f
28	1	14	15	4	f	f
29	1	14	13	3	f	f
30	1	14	13	4	f	f
31	1	15	1	3	f	f
32	1	15	1	4	f	f
33	1	15	7	3	f	f
34	1	15	7	4	f	f
35	1	15	14	3	f	f
36	1	15	14	4	f	f
37	1	15	15	3	f	f
38	1	15	15	4	f	f
39	1	15	13	3	f	f
40	1	15	13	4	f	f
41	1	13	1	3	f	f
42	1	13	1	4	f	f
43	1	13	7	3	f	f
44	1	13	7	4	f	f
45	1	13	14	3	f	f
46	1	13	14	4	f	f
47	1	13	15	3	f	f
48	1	13	15	4	f	f
49	1	13	13	3	f	f
50	1	13	13	4	f	f
51	2	1	1	3	f	f
52	2	1	1	4	f	f
53	2	1	5	3	f	f
54	2	1	5	4	f	f
55	2	1	6	3	f	f
56	2	1	6	4	f	f
57	2	1	7	3	f	f
58	2	1	7	4	f	f
59	2	1	14	3	f	f
60	2	1	14	4	f	f
61	2	1	15	3	f	f
62	2	1	15	4	f	f
63	2	1	13	3	f	f
64	2	1	13	4	f	f
65	2	5	1	3	f	f
66	2	5	1	4	f	f
67	2	5	5	3	f	f
68	2	5	5	4	f	f
69	2	5	6	3	f	f
70	2	5	6	4	f	f
71	2	5	7	3	f	f
72	2	5	7	4	f	f
73	2	5	14	3	f	f
74	2	5	14	4	f	f
75	2	5	15	3	f	f
76	2	5	15	4	f	f
77	2	5	13	3	f	f
78	2	5	13	4	f	f
79	2	6	1	3	f	f
80	2	6	1	4	f	f
81	2	6	5	3	f	f
82	2	6	5	4	f	f
83	2	6	6	3	f	f
84	2	6	6	4	f	f
85	2	6	7	3	f	f
86	2	6	7	4	f	f
87	2	6	14	3	f	f
88	2	6	14	4	f	f
89	2	6	15	3	f	f
90	2	6	15	4	f	f
91	2	6	13	3	f	f
92	2	6	13	4	f	f
93	2	7	1	3	f	f
94	2	7	1	4	f	f
95	2	7	5	3	f	f
96	2	7	5	4	f	f
97	2	7	6	3	f	f
98	2	7	6	4	f	f
99	2	7	7	3	f	f
100	2	7	7	4	f	f
101	2	7	14	3	f	f
102	2	7	14	4	f	f
103	2	7	15	3	f	f
104	2	7	15	4	f	f
105	2	7	13	3	f	f
106	2	7	13	4	f	f
107	2	14	1	3	f	f
108	2	14	1	4	f	f
109	2	14	5	3	f	f
110	2	14	5	4	f	f
111	2	14	6	3	f	f
112	2	14	6	4	f	f
113	2	14	7	3	f	f
114	2	14	7	4	f	f
115	2	14	14	3	f	f
116	2	14	14	4	f	f
117	2	14	15	3	f	f
118	2	14	15	4	f	f
119	2	14	13	3	f	f
120	2	14	13	4	f	f
121	2	15	1	3	f	f
122	2	15	1	4	f	f
123	2	15	5	3	f	f
124	2	15	5	4	f	f
125	2	15	6	3	f	f
126	2	15	6	4	f	f
127	2	15	7	3	f	f
128	2	15	7	4	f	f
129	2	15	14	3	f	f
130	2	15	14	4	f	f
131	2	15	15	3	f	f
132	2	15	15	4	f	f
133	2	15	13	3	f	f
134	2	15	13	4	f	f
135	2	13	1	3	f	f
136	2	13	1	4	f	f
137	2	13	5	3	f	f
138	2	13	5	4	f	f
139	2	13	6	3	f	f
140	2	13	6	4	f	f
141	2	13	7	3	f	f
142	2	13	7	4	f	f
143	2	13	14	3	f	f
144	2	13	14	4	f	f
145	2	13	15	3	f	f
146	2	13	15	4	f	f
147	2	13	13	3	f	f
148	2	13	13	4	f	f
149	3	1	1	3	f	f
150	3	1	1	4	f	f
151	3	1	5	3	f	f
152	3	1	5	4	f	f
153	3	1	6	3	f	f
154	3	1	6	4	f	f
155	3	1	7	3	f	f
156	3	1	7	4	f	f
157	3	1	14	3	f	f
158	3	1	14	4	f	f
159	3	1	15	3	f	f
160	3	1	15	4	f	f
161	3	1	13	3	f	f
162	3	1	13	4	f	f
163	3	5	1	3	f	f
164	3	5	1	4	f	f
165	3	5	5	3	f	f
166	3	5	5	4	f	f
167	3	5	6	3	f	f
168	3	5	6	4	f	f
169	3	5	7	3	f	f
170	3	5	7	4	f	f
171	3	5	14	3	f	f
172	3	5	14	4	f	f
173	3	5	15	3	f	f
174	3	5	15	4	f	f
175	3	5	13	3	f	f
176	3	5	13	4	f	f
177	3	6	1	3	f	f
178	3	6	1	4	f	f
179	3	6	5	3	f	f
180	3	6	5	4	f	f
181	3	6	6	3	f	f
182	3	6	6	4	f	f
183	3	6	7	3	f	f
184	3	6	7	4	f	f
185	3	6	14	3	f	f
186	3	6	14	4	f	f
187	3	6	15	3	f	f
188	3	6	15	4	f	f
189	3	6	13	3	f	f
190	3	6	13	4	f	f
191	3	7	1	3	f	f
192	3	7	1	4	f	f
193	3	7	5	3	f	f
194	3	7	5	4	f	f
195	3	7	6	3	f	f
196	3	7	6	4	f	f
197	3	7	7	3	f	f
198	3	7	7	4	f	f
199	3	7	14	3	f	f
200	3	7	14	4	f	f
201	3	7	15	3	f	f
202	3	7	15	4	f	f
203	3	7	13	3	f	f
204	3	7	13	4	f	f
205	3	14	1	3	f	f
206	3	14	1	4	f	f
207	3	14	5	3	f	f
208	3	14	5	4	f	f
209	3	14	6	3	f	f
210	3	14	6	4	f	f
211	3	14	7	3	f	f
212	3	14	7	4	f	f
213	3	14	14	3	f	f
214	3	14	14	4	f	f
215	3	14	15	3	f	f
216	3	14	15	4	f	f
217	3	14	13	3	f	f
218	3	14	13	4	f	f
219	3	15	1	3	f	f
220	3	15	1	4	f	f
221	3	15	5	3	f	f
222	3	15	5	4	f	f
223	3	15	6	3	f	f
224	3	15	6	4	f	f
225	3	15	7	3	f	f
226	3	15	7	4	f	f
227	3	15	14	3	f	f
228	3	15	14	4	f	f
229	3	15	15	3	f	f
230	3	15	15	4	f	f
231	3	15	13	3	f	f
232	3	15	13	4	f	f
233	3	13	1	3	f	f
234	3	13	1	4	f	f
235	3	13	5	3	f	f
236	3	13	5	4	f	f
237	3	13	6	3	f	f
238	3	13	6	4	f	f
239	3	13	7	3	f	f
240	3	13	7	4	f	f
241	3	13	14	3	f	f
242	3	13	14	4	f	f
243	3	13	15	3	f	f
244	3	13	15	4	f	f
245	3	13	13	3	f	f
246	3	13	13	4	f	f
247	4	1	1	3	f	f
248	4	1	1	4	f	f
249	4	1	2	3	f	f
250	4	1	2	4	f	f
251	4	1	3	3	f	f
252	4	1	3	4	f	f
253	4	1	8	3	f	f
254	4	1	8	4	f	f
255	4	1	9	3	f	f
256	4	1	9	4	f	f
257	4	1	10	3	f	f
258	4	1	10	4	f	f
259	4	1	11	3	f	f
260	4	1	11	4	f	f
261	4	1	12	3	f	f
262	4	1	12	4	f	f
263	4	1	14	3	f	f
264	4	1	14	4	f	f
265	4	1	15	3	f	f
266	4	1	15	4	f	f
267	4	1	13	3	f	f
268	4	1	13	4	f	f
269	4	2	1	3	f	f
270	4	2	1	4	f	f
271	4	2	2	3	f	f
272	4	2	2	4	f	f
273	4	2	3	3	f	f
274	4	2	3	4	f	f
275	4	2	8	3	f	f
276	4	2	8	4	f	f
277	4	2	9	3	f	f
278	4	2	9	4	f	f
279	4	2	10	3	f	f
280	4	2	10	4	f	f
281	4	2	11	3	f	f
282	4	2	11	4	f	f
283	4	2	12	3	f	f
284	4	2	12	4	f	f
285	4	2	14	3	f	f
286	4	2	14	4	f	f
287	4	2	15	3	f	f
288	4	2	15	4	f	f
289	4	2	13	3	f	f
290	4	2	13	4	f	f
291	4	3	1	3	f	f
292	4	3	1	4	f	f
293	4	3	2	3	f	f
294	4	3	2	4	f	f
295	4	3	3	3	f	f
296	4	3	3	4	f	f
297	4	3	8	3	f	f
298	4	3	8	4	f	f
299	4	3	9	3	f	f
300	4	3	9	4	f	f
301	4	3	10	3	f	f
302	4	3	10	4	f	f
303	4	3	11	3	f	f
304	4	3	11	4	f	f
305	4	3	12	3	f	f
306	4	3	12	4	f	f
307	4	3	14	3	f	f
308	4	3	14	4	f	f
309	4	3	15	3	f	f
310	4	3	15	4	f	f
311	4	3	13	3	f	f
312	4	3	13	4	f	f
313	4	8	1	3	f	f
314	4	8	1	4	f	f
315	4	8	2	3	f	f
316	4	8	2	4	f	f
317	4	8	3	3	f	f
318	4	8	3	4	f	f
319	4	8	8	3	f	f
320	4	8	8	4	f	f
321	4	8	9	3	f	f
322	4	8	9	4	f	f
323	4	8	10	3	f	f
324	4	8	10	4	f	f
325	4	8	11	3	f	f
326	4	8	11	4	f	f
327	4	8	12	3	f	f
328	4	8	12	4	f	f
329	4	8	14	3	f	f
330	4	8	14	4	f	f
331	4	8	15	3	f	f
332	4	8	15	4	f	f
333	4	8	13	3	f	f
334	4	8	13	4	f	f
335	4	9	1	3	f	f
336	4	9	1	4	f	f
337	4	9	2	3	f	f
338	4	9	2	4	f	f
339	4	9	3	3	f	f
340	4	9	3	4	f	f
341	4	9	8	3	f	f
342	4	9	8	4	f	f
343	4	9	9	3	f	f
344	4	9	9	4	f	f
345	4	9	10	3	f	f
346	4	9	10	4	f	f
347	4	9	11	3	f	f
348	4	9	11	4	f	f
349	4	9	12	3	f	f
350	4	9	12	4	f	f
351	4	9	14	3	f	f
352	4	9	14	4	f	f
353	4	9	15	3	f	f
354	4	9	15	4	f	f
355	4	9	13	3	f	f
356	4	9	13	4	f	f
357	4	10	1	3	f	f
358	4	10	1	4	f	f
359	4	10	2	3	f	f
360	4	10	2	4	f	f
361	4	10	3	3	f	f
362	4	10	3	4	f	f
363	4	10	8	3	f	f
364	4	10	8	4	f	f
365	4	10	9	3	f	f
366	4	10	9	4	f	f
367	4	10	10	3	f	f
368	4	10	10	4	f	f
369	4	10	11	3	f	f
370	4	10	11	4	f	f
371	4	10	12	3	f	f
372	4	10	12	4	f	f
373	4	10	14	3	f	f
374	4	10	14	4	f	f
375	4	10	15	3	f	f
376	4	10	15	4	f	f
377	4	10	13	3	f	f
378	4	10	13	4	f	f
379	4	11	1	3	f	f
380	4	11	1	4	f	f
381	4	11	2	3	f	f
382	4	11	2	4	f	f
383	4	11	3	3	f	f
384	4	11	3	4	f	f
385	4	11	8	3	f	f
386	4	11	8	4	f	f
387	4	11	9	3	f	f
388	4	11	9	4	f	f
389	4	11	10	3	f	f
390	4	11	10	4	f	f
391	4	11	11	3	f	f
392	4	11	11	4	f	f
393	4	11	12	3	f	f
394	4	11	12	4	f	f
395	4	11	14	3	f	f
396	4	11	14	4	f	f
397	4	11	15	3	f	f
398	4	11	15	4	f	f
399	4	11	13	3	f	f
400	4	11	13	4	f	f
401	4	12	1	3	f	f
402	4	12	1	4	f	f
403	4	12	2	3	f	f
404	4	12	2	4	f	f
405	4	12	3	3	f	f
406	4	12	3	4	f	f
407	4	12	8	3	f	f
408	4	12	8	4	f	f
409	4	12	9	3	f	f
410	4	12	9	4	f	f
411	4	12	10	3	f	f
412	4	12	10	4	f	f
413	4	12	11	3	f	f
414	4	12	11	4	f	f
415	4	12	12	3	f	f
416	4	12	12	4	f	f
417	4	12	14	3	f	f
418	4	12	14	4	f	f
419	4	12	15	3	f	f
420	4	12	15	4	f	f
421	4	12	13	3	f	f
422	4	12	13	4	f	f
423	4	14	1	3	f	f
424	4	14	1	4	f	f
425	4	14	2	3	f	f
426	4	14	2	4	f	f
427	4	14	3	3	f	f
428	4	14	3	4	f	f
429	4	14	8	3	f	f
430	4	14	8	4	f	f
431	4	14	9	3	f	f
432	4	14	9	4	f	f
433	4	14	10	3	f	f
434	4	14	10	4	f	f
435	4	14	11	3	f	f
436	4	14	11	4	f	f
437	4	14	12	3	f	f
438	4	14	12	4	f	f
439	4	14	14	3	f	f
440	4	14	14	4	f	f
441	4	14	15	3	f	f
442	4	14	15	4	f	f
443	4	14	13	3	f	f
444	4	14	13	4	f	f
445	4	15	1	3	f	f
446	4	15	1	4	f	f
447	4	15	2	3	f	f
448	4	15	2	4	f	f
449	4	15	3	3	f	f
450	4	15	3	4	f	f
451	4	15	8	3	f	f
452	4	15	8	4	f	f
453	4	15	9	3	f	f
454	4	15	9	4	f	f
455	4	15	10	3	f	f
456	4	15	10	4	f	f
457	4	15	11	3	f	f
458	4	15	11	4	f	f
459	4	15	12	3	f	f
460	4	15	12	4	f	f
461	4	15	14	3	f	f
462	4	15	14	4	f	f
463	4	15	15	3	f	f
464	4	15	15	4	f	f
465	4	15	13	3	f	f
466	4	15	13	4	f	f
467	4	13	1	3	f	f
468	4	13	1	4	f	f
469	4	13	2	3	f	f
470	4	13	2	4	f	f
471	4	13	3	3	f	f
472	4	13	3	4	f	f
473	4	13	8	3	f	f
474	4	13	8	4	f	f
475	4	13	9	3	f	f
476	4	13	9	4	f	f
477	4	13	10	3	f	f
478	4	13	10	4	f	f
479	4	13	11	3	f	f
480	4	13	11	4	f	f
481	4	13	12	3	f	f
482	4	13	12	4	f	f
483	4	13	14	3	f	f
484	4	13	14	4	f	f
485	4	13	15	3	f	f
486	4	13	15	4	f	f
487	4	13	13	3	f	f
488	4	13	13	4	f	f
489	5	1	1	3	f	f
490	5	1	1	4	f	f
491	5	1	2	3	f	f
492	5	1	2	4	f	f
493	5	1	3	3	f	f
494	5	1	3	4	f	f
495	5	1	8	3	f	f
496	5	1	8	4	f	f
497	5	1	9	3	f	f
498	5	1	9	4	f	f
499	5	1	10	3	f	f
500	5	1	10	4	f	f
501	5	1	11	3	f	f
502	5	1	11	4	f	f
503	5	1	12	3	f	f
504	5	1	12	4	f	f
505	5	1	14	3	f	f
506	5	1	14	4	f	f
507	5	1	15	3	f	f
508	5	1	15	4	f	f
509	5	1	13	3	f	f
510	5	1	13	4	f	f
511	5	2	1	3	f	f
512	5	2	1	4	f	f
513	5	2	2	3	f	f
514	5	2	2	4	f	f
515	5	2	3	3	f	f
516	5	2	3	4	f	f
517	5	2	8	3	f	f
518	5	2	8	4	f	f
519	5	2	9	3	f	f
520	5	2	9	4	f	f
521	5	2	10	3	f	f
522	5	2	10	4	f	f
523	5	2	11	3	f	f
524	5	2	11	4	f	f
525	5	2	12	3	f	f
526	5	2	12	4	f	f
527	5	2	14	3	f	f
528	5	2	14	4	f	f
529	5	2	15	3	f	f
530	5	2	15	4	f	f
531	5	2	13	3	f	f
532	5	2	13	4	f	f
533	5	3	1	3	f	f
534	5	3	1	4	f	f
535	5	3	2	3	f	f
536	5	3	2	4	f	f
537	5	3	3	3	f	f
538	5	3	3	4	f	f
539	5	3	8	3	f	f
540	5	3	8	4	f	f
541	5	3	9	3	f	f
542	5	3	9	4	f	f
543	5	3	10	3	f	f
544	5	3	10	4	f	f
545	5	3	11	3	f	f
546	5	3	11	4	f	f
547	5	3	12	3	f	f
548	5	3	12	4	f	f
549	5	3	14	3	f	f
550	5	3	14	4	f	f
551	5	3	15	3	f	f
552	5	3	15	4	f	f
553	5	3	13	3	f	f
554	5	3	13	4	f	f
555	5	8	1	3	f	f
556	5	8	1	4	f	f
557	5	8	2	3	f	f
558	5	8	2	4	f	f
559	5	8	3	3	f	f
560	5	8	3	4	f	f
561	5	8	8	3	f	f
562	5	8	8	4	f	f
563	5	8	9	3	f	f
564	5	8	9	4	f	f
565	5	8	10	3	f	f
566	5	8	10	4	f	f
567	5	8	11	3	f	f
568	5	8	11	4	f	f
569	5	8	12	3	f	f
570	5	8	12	4	f	f
571	5	8	14	3	f	f
572	5	8	14	4	f	f
573	5	8	15	3	f	f
574	5	8	15	4	f	f
575	5	8	13	3	f	f
576	5	8	13	4	f	f
577	5	9	1	3	f	f
578	5	9	1	4	f	f
579	5	9	2	3	f	f
580	5	9	2	4	f	f
581	5	9	3	3	f	f
582	5	9	3	4	f	f
583	5	9	8	3	f	f
584	5	9	8	4	f	f
585	5	9	9	3	f	f
586	5	9	9	4	f	f
587	5	9	10	3	f	f
588	5	9	10	4	f	f
589	5	9	11	3	f	f
590	5	9	11	4	f	f
591	5	9	12	3	f	f
592	5	9	12	4	f	f
593	5	9	14	3	f	f
594	5	9	14	4	f	f
595	5	9	15	3	f	f
596	5	9	15	4	f	f
597	5	9	13	3	f	f
598	5	9	13	4	f	f
599	5	10	1	3	f	f
600	5	10	1	4	f	f
601	5	10	2	3	f	f
602	5	10	2	4	f	f
603	5	10	3	3	f	f
604	5	10	3	4	f	f
605	5	10	8	3	f	f
606	5	10	8	4	f	f
607	5	10	9	3	f	f
608	5	10	9	4	f	f
609	5	10	10	3	f	f
610	5	10	10	4	f	f
611	5	10	11	3	f	f
612	5	10	11	4	f	f
613	5	10	12	3	f	f
614	5	10	12	4	f	f
615	5	10	14	3	f	f
616	5	10	14	4	f	f
617	5	10	15	3	f	f
618	5	10	15	4	f	f
619	5	10	13	3	f	f
620	5	10	13	4	f	f
621	5	11	1	3	f	f
622	5	11	1	4	f	f
623	5	11	2	3	f	f
624	5	11	2	4	f	f
625	5	11	3	3	f	f
626	5	11	3	4	f	f
627	5	11	8	3	f	f
628	5	11	8	4	f	f
629	5	11	9	3	f	f
630	5	11	9	4	f	f
631	5	11	10	3	f	f
632	5	11	10	4	f	f
633	5	11	11	3	f	f
634	5	11	11	4	f	f
635	5	11	12	3	f	f
636	5	11	12	4	f	f
637	5	11	14	3	f	f
638	5	11	14	4	f	f
639	5	11	15	3	f	f
640	5	11	15	4	f	f
641	5	11	13	3	f	f
642	5	11	13	4	f	f
643	5	12	1	3	f	f
644	5	12	1	4	f	f
645	5	12	2	3	f	f
646	5	12	2	4	f	f
647	5	12	3	3	f	f
648	5	12	3	4	f	f
649	5	12	8	3	f	f
650	5	12	8	4	f	f
651	5	12	9	3	f	f
652	5	12	9	4	f	f
653	5	12	10	3	f	f
654	5	12	10	4	f	f
655	5	12	11	3	f	f
656	5	12	11	4	f	f
657	5	12	12	3	f	f
658	5	12	12	4	f	f
659	5	12	14	3	f	f
660	5	12	14	4	f	f
661	5	12	15	3	f	f
662	5	12	15	4	f	f
663	5	12	13	3	f	f
664	5	12	13	4	f	f
665	5	14	1	3	f	f
666	5	14	1	4	f	f
667	5	14	2	3	f	f
668	5	14	2	4	f	f
669	5	14	3	3	f	f
670	5	14	3	4	f	f
671	5	14	8	3	f	f
672	5	14	8	4	f	f
673	5	14	9	3	f	f
674	5	14	9	4	f	f
675	5	14	10	3	f	f
676	5	14	10	4	f	f
677	5	14	11	3	f	f
678	5	14	11	4	f	f
679	5	14	12	3	f	f
680	5	14	12	4	f	f
681	5	14	14	3	f	f
682	5	14	14	4	f	f
683	5	14	15	3	f	f
684	5	14	15	4	f	f
685	5	14	13	3	f	f
686	5	14	13	4	f	f
687	5	15	1	3	f	f
688	5	15	1	4	f	f
689	5	15	2	3	f	f
690	5	15	2	4	f	f
691	5	15	3	3	f	f
692	5	15	3	4	f	f
693	5	15	8	3	f	f
694	5	15	8	4	f	f
695	5	15	9	3	f	f
696	5	15	9	4	f	f
697	5	15	10	3	f	f
698	5	15	10	4	f	f
699	5	15	11	3	f	f
700	5	15	11	4	f	f
701	5	15	12	3	f	f
702	5	15	12	4	f	f
703	5	15	14	3	f	f
704	5	15	14	4	f	f
705	5	15	15	3	f	f
706	5	15	15	4	f	f
707	5	15	13	3	f	f
708	5	15	13	4	f	f
709	5	13	1	3	f	f
710	5	13	1	4	f	f
711	5	13	2	3	f	f
712	5	13	2	4	f	f
713	5	13	3	3	f	f
714	5	13	3	4	f	f
715	5	13	8	3	f	f
716	5	13	8	4	f	f
717	5	13	9	3	f	f
718	5	13	9	4	f	f
719	5	13	10	3	f	f
720	5	13	10	4	f	f
721	5	13	11	3	f	f
722	5	13	11	4	f	f
723	5	13	12	3	f	f
724	5	13	12	4	f	f
725	5	13	14	3	f	f
726	5	13	14	4	f	f
727	5	13	15	3	f	f
728	5	13	15	4	f	f
729	5	13	13	3	f	f
730	5	13	13	4	f	f
973	7	1	1	3	f	f
974	7	1	1	4	f	f
975	7	1	4	3	f	f
976	7	1	4	4	f	f
977	7	1	8	3	f	f
978	7	1	8	4	f	f
979	7	1	9	3	f	f
980	7	1	9	4	f	f
981	7	1	10	3	f	f
982	7	1	10	4	f	f
983	7	1	11	3	f	f
984	7	1	11	4	f	f
985	7	1	12	3	f	f
986	7	1	12	4	f	f
987	7	1	14	3	f	f
988	7	1	14	4	f	f
989	7	1	15	3	f	f
990	7	1	15	4	f	f
991	7	1	13	3	f	f
992	7	1	13	4	f	f
993	7	4	1	3	f	f
994	7	4	1	4	f	f
995	7	4	4	3	f	f
996	7	4	4	4	f	f
997	7	4	8	3	f	f
998	7	4	8	4	f	f
999	7	4	9	3	f	f
1000	7	4	9	4	f	f
1001	7	4	10	3	f	f
1002	7	4	10	4	f	f
1003	7	4	11	3	f	f
1004	7	4	11	4	f	f
1005	7	4	12	3	f	f
1006	7	4	12	4	f	f
1007	7	4	14	3	f	f
1008	7	4	14	4	f	f
1009	7	4	15	3	f	f
1010	7	4	15	4	f	f
1011	7	4	13	3	f	f
1012	7	4	13	4	f	f
1013	7	8	1	3	f	f
1014	7	8	1	4	f	f
1015	7	8	4	3	f	f
1016	7	8	4	4	f	f
1017	7	8	8	3	f	f
1018	7	8	8	4	f	f
1019	7	8	9	3	f	f
1020	7	8	9	4	f	f
1021	7	8	10	3	f	f
1022	7	8	10	4	f	f
1023	7	8	11	3	f	f
1024	7	8	11	4	f	f
1025	7	8	12	3	f	f
1026	7	8	12	4	f	f
1027	7	8	14	3	f	f
1028	7	8	14	4	f	f
1029	7	8	15	3	f	f
1030	7	8	15	4	f	f
1031	7	8	13	3	f	f
1032	7	8	13	4	f	f
1033	7	9	1	3	f	f
1034	7	9	1	4	f	f
1035	7	9	4	3	f	f
1036	7	9	4	4	f	f
1037	7	9	8	3	f	f
1038	7	9	8	4	f	f
1039	7	9	9	3	f	f
1040	7	9	9	4	f	f
1041	7	9	10	3	f	f
1042	7	9	10	4	f	f
1043	7	9	11	3	f	f
1044	7	9	11	4	f	f
1045	7	9	12	3	f	f
1046	7	9	12	4	f	f
1047	7	9	14	3	f	f
1048	7	9	14	4	f	f
1049	7	9	15	3	f	f
1050	7	9	15	4	f	f
1051	7	9	13	3	f	f
1052	7	9	13	4	f	f
1053	7	10	1	3	f	f
1054	7	10	1	4	f	f
1055	7	10	4	3	f	f
1056	7	10	4	4	f	f
1057	7	10	8	3	f	f
1058	7	10	8	4	f	f
1059	7	10	9	3	f	f
1060	7	10	9	4	f	f
1061	7	10	10	3	f	f
1062	7	10	10	4	f	f
1063	7	10	11	3	f	f
1064	7	10	11	4	f	f
1065	7	10	12	3	f	f
1066	7	10	12	4	f	f
1067	7	10	14	3	f	f
1068	7	10	14	4	f	f
1069	7	10	15	3	f	f
1070	7	10	15	4	f	f
1071	7	10	13	3	f	f
1072	7	10	13	4	f	f
1073	7	11	1	3	f	f
1074	7	11	1	4	f	f
1075	7	11	4	3	f	f
1076	7	11	4	4	f	f
1077	7	11	8	3	f	f
1078	7	11	8	4	f	f
1079	7	11	9	3	f	f
1080	7	11	9	4	f	f
1081	7	11	10	3	f	f
1082	7	11	10	4	f	f
1083	7	11	11	3	f	f
1084	7	11	11	4	f	f
1085	7	11	12	3	f	f
1086	7	11	12	4	f	f
1087	7	11	14	3	f	f
1088	7	11	14	4	f	f
1089	7	11	15	3	f	f
1090	7	11	15	4	f	f
1091	7	11	13	3	f	f
1092	7	11	13	4	f	f
1093	7	12	1	3	f	f
1094	7	12	1	4	f	f
1095	7	12	4	3	f	f
1096	7	12	4	4	f	f
1097	7	12	8	3	f	f
1098	7	12	8	4	f	f
1099	7	12	9	3	f	f
1100	7	12	9	4	f	f
1101	7	12	10	3	f	f
1102	7	12	10	4	f	f
1103	7	12	11	3	f	f
1104	7	12	11	4	f	f
1105	7	12	12	3	f	f
1106	7	12	12	4	f	f
1107	7	12	14	3	f	f
1108	7	12	14	4	f	f
1109	7	12	15	3	f	f
1110	7	12	15	4	f	f
1111	7	12	13	3	f	f
1112	7	12	13	4	f	f
1113	7	14	1	3	f	f
1114	7	14	1	4	f	f
1115	7	14	4	3	f	f
1116	7	14	4	4	f	f
1117	7	14	8	3	f	f
1118	7	14	8	4	f	f
1119	7	14	9	3	f	f
1120	7	14	9	4	f	f
1121	7	14	10	3	f	f
1122	7	14	10	4	f	f
1123	7	14	11	3	f	f
1124	7	14	11	4	f	f
1125	7	14	12	3	f	f
1126	7	14	12	4	f	f
1127	7	14	14	3	f	f
1128	7	14	14	4	f	f
1129	7	14	15	3	f	f
1130	7	14	15	4	f	f
1131	7	14	13	3	f	f
1132	7	14	13	4	f	f
1133	7	15	1	3	f	f
1134	7	15	1	4	f	f
1135	7	15	4	3	f	f
1136	7	15	4	4	f	f
1137	7	15	8	3	f	f
1138	7	15	8	4	f	f
1139	7	15	9	3	f	f
1140	7	15	9	4	f	f
1141	7	15	10	3	f	f
1142	7	15	10	4	f	f
1143	7	15	11	3	f	f
1144	7	15	11	4	f	f
1145	7	15	12	3	f	f
1146	7	15	12	4	f	f
1147	7	15	14	3	f	f
1148	7	15	14	4	f	f
1149	7	15	15	3	f	f
1150	7	15	15	4	f	f
1151	7	15	13	3	f	f
1152	7	15	13	4	f	f
1153	7	13	1	3	f	f
1154	7	13	1	4	f	f
1155	7	13	4	3	f	f
1156	7	13	4	4	f	f
1157	7	13	8	3	f	f
1158	7	13	8	4	f	f
1159	7	13	9	3	f	f
1160	7	13	9	4	f	f
1161	7	13	10	3	f	f
1162	7	13	10	4	f	f
1163	7	13	11	3	f	f
1164	7	13	11	4	f	f
1165	7	13	12	3	f	f
1166	7	13	12	4	f	f
1167	7	13	14	3	f	f
1168	7	13	14	4	f	f
1169	7	13	15	3	f	f
1170	7	13	15	4	f	f
1171	7	13	13	3	f	f
1172	7	13	13	4	f	f
\.


--
-- Name: announcements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.announcements_id_seq', 1, true);


--
-- Name: attachable_journals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attachable_journals_id_seq', 1, false);


--
-- Name: attachment_journals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attachment_journals_id_seq', 1, false);


--
-- Name: attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attachments_id_seq', 1, false);


--
-- Name: attribute_help_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attribute_help_texts_id_seq', 1, false);


--
-- Name: auth_sources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_sources_id_seq', 1, false);


--
-- Name: available_project_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.available_project_statuses_id_seq', 6, true);


--
-- Name: boards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_id_seq', 1, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- Name: changes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.changes_id_seq', 1, false);


--
-- Name: changeset_journals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.changeset_journals_id_seq', 1, false);


--
-- Name: changesets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.changesets_id_seq', 1, false);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comments_id_seq', 1, false);


--
-- Name: cost_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cost_entries_id_seq', 1, false);


--
-- Name: cost_object_journals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cost_object_journals_id_seq', 1, false);


--
-- Name: cost_objects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cost_objects_id_seq', 1, false);


--
-- Name: cost_queries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cost_queries_id_seq', 1, false);


--
-- Name: cost_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cost_types_id_seq', 1, false);


--
-- Name: custom_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.custom_fields_id_seq', 1, false);


--
-- Name: custom_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.custom_options_id_seq', 1, false);


--
-- Name: custom_styles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.custom_styles_id_seq', 1, false);


--
-- Name: custom_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.custom_values_id_seq', 1, false);


--
-- Name: customizable_journals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customizable_journals_id_seq', 1, false);


--
-- Name: delayed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.delayed_jobs_id_seq', 27, true);


--
-- Name: design_colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.design_colors_id_seq', 1, false);


--
-- Name: document_journals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.document_journals_id_seq', 1, false);


--
-- Name: documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.documents_id_seq', 1, false);


--
-- Name: enabled_modules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.enabled_modules_id_seq', 12, true);


--
-- Name: enterprise_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.enterprise_tokens_id_seq', 1, false);


--
-- Name: enumerations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.enumerations_id_seq', 21, true);


--
-- Name: export_card_configurations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.export_card_configurations_id_seq', 1, false);


--
-- Name: hierarchy_paths_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hierarchy_paths_id_seq', 12, true);


--
-- Name: journals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.journals_id_seq', 28, true);


--
-- Name: labor_budget_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.labor_budget_items_id_seq', 1, false);


--
-- Name: ldap_groups_memberships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ldap_groups_memberships_id_seq', 1, false);


--
-- Name: ldap_groups_synchronized_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ldap_groups_synchronized_groups_id_seq', 1, false);


--
-- Name: material_budget_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.material_budget_items_id_seq', 1, false);


--
-- Name: meeting_content_journals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.meeting_content_journals_id_seq', 2, true);


--
-- Name: meeting_contents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.meeting_contents_id_seq', 2, true);


--
-- Name: meeting_journals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.meeting_journals_id_seq', 2, true);


--
-- Name: meeting_participants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.meeting_participants_id_seq', 2, true);


--
-- Name: meetings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.meetings_id_seq', 2, true);


--
-- Name: member_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.member_roles_id_seq', 1, true);


--
-- Name: members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.members_id_seq', 1, true);


--
-- Name: menu_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.menu_items_id_seq', 8, true);


--
-- Name: message_journals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.message_journals_id_seq', 1, false);


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.messages_id_seq', 1, false);


--
-- Name: my_projects_overviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.my_projects_overviews_id_seq', 1, true);


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_id_seq', 1, false);


--
-- Name: news_journals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_journals_id_seq', 1, false);


--
-- Name: plaintext_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.plaintext_tokens_id_seq', 1, false);


--
-- Name: planning_element_type_colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.planning_element_type_colors_id_seq', 14, true);


--
-- Name: principal_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.principal_roles_id_seq', 1, false);


--
-- Name: project_associations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.project_associations_id_seq', 1, false);


--
-- Name: project_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.project_types_id_seq', 2, true);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projects_id_seq', 1, true);


--
-- Name: queries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.queries_id_seq', 7, true);


--
-- Name: rates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rates_id_seq', 1, false);


--
-- Name: relations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.relations_id_seq', 49, true);


--
-- Name: reportings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reportings_id_seq', 1, false);


--
-- Name: repositories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.repositories_id_seq', 1, false);


--
-- Name: role_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.role_permissions_id_seq', 199, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 5, true);


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sessions_id_seq', 1, false);


--
-- Name: settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.settings_id_seq', 111, true);


--
-- Name: statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.statuses_id_seq', 15, true);


--
-- Name: time_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.time_entries_id_seq', 1, false);


--
-- Name: time_entry_journals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.time_entry_journals_id_seq', 1, false);


--
-- Name: timelines_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.timelines_id_seq', 1, false);


--
-- Name: tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tokens_id_seq', 2, true);


--
-- Name: two_factor_authentication_devices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.two_factor_authentication_devices_id_seq', 1, false);


--
-- Name: types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.types_id_seq', 7, true);


--
-- Name: user_passwords_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_passwords_id_seq', 3, true);


--
-- Name: user_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_preferences_id_seq', 1, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- Name: version_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.version_settings_id_seq', 7, true);


--
-- Name: versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.versions_id_seq', 7, true);


--
-- Name: watchers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.watchers_id_seq', 2, true);


--
-- Name: webhooks_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.webhooks_events_id_seq', 1, false);


--
-- Name: webhooks_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.webhooks_logs_id_seq', 1, false);


--
-- Name: webhooks_projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.webhooks_projects_id_seq', 1, false);


--
-- Name: webhooks_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.webhooks_webhooks_id_seq', 1, false);


--
-- Name: wiki_content_journals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wiki_content_journals_id_seq', 1, true);


--
-- Name: wiki_content_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wiki_content_versions_id_seq', 1, false);


--
-- Name: wiki_contents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wiki_contents_id_seq', 1, true);


--
-- Name: wiki_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wiki_pages_id_seq', 1, true);


--
-- Name: wiki_redirects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wiki_redirects_id_seq', 1, false);


--
-- Name: wikis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wikis_id_seq', 1, true);


--
-- Name: work_package_journals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.work_package_journals_id_seq', 23, true);


--
-- Name: work_packages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.work_packages_id_seq', 15, true);


--
-- Name: workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.workflows_id_seq', 1172, true);


--
-- Name: announcements announcements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT announcements_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: attachable_journals attachable_journals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attachable_journals
    ADD CONSTRAINT attachable_journals_pkey PRIMARY KEY (id);


--
-- Name: attachment_journals attachment_journals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attachment_journals
    ADD CONSTRAINT attachment_journals_pkey PRIMARY KEY (id);


--
-- Name: attachments attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attachments
    ADD CONSTRAINT attachments_pkey PRIMARY KEY (id);


--
-- Name: attribute_help_texts attribute_help_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attribute_help_texts
    ADD CONSTRAINT attribute_help_texts_pkey PRIMARY KEY (id);


--
-- Name: auth_sources auth_sources_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_sources
    ADD CONSTRAINT auth_sources_pkey PRIMARY KEY (id);


--
-- Name: available_project_statuses available_project_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.available_project_statuses
    ADD CONSTRAINT available_project_statuses_pkey PRIMARY KEY (id);


--
-- Name: boards boards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards
    ADD CONSTRAINT boards_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: changes changes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.changes
    ADD CONSTRAINT changes_pkey PRIMARY KEY (id);


--
-- Name: changeset_journals changeset_journals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.changeset_journals
    ADD CONSTRAINT changeset_journals_pkey PRIMARY KEY (id);


--
-- Name: changesets changesets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.changesets
    ADD CONSTRAINT changesets_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: cost_entries cost_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cost_entries
    ADD CONSTRAINT cost_entries_pkey PRIMARY KEY (id);


--
-- Name: cost_object_journals cost_object_journals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cost_object_journals
    ADD CONSTRAINT cost_object_journals_pkey PRIMARY KEY (id);


--
-- Name: cost_objects cost_objects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cost_objects
    ADD CONSTRAINT cost_objects_pkey PRIMARY KEY (id);


--
-- Name: cost_queries cost_queries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cost_queries
    ADD CONSTRAINT cost_queries_pkey PRIMARY KEY (id);


--
-- Name: cost_types cost_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cost_types
    ADD CONSTRAINT cost_types_pkey PRIMARY KEY (id);


--
-- Name: custom_fields custom_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custom_fields
    ADD CONSTRAINT custom_fields_pkey PRIMARY KEY (id);


--
-- Name: custom_options custom_options_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custom_options
    ADD CONSTRAINT custom_options_pkey PRIMARY KEY (id);


--
-- Name: custom_styles custom_styles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custom_styles
    ADD CONSTRAINT custom_styles_pkey PRIMARY KEY (id);


--
-- Name: custom_values custom_values_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custom_values
    ADD CONSTRAINT custom_values_pkey PRIMARY KEY (id);


--
-- Name: customizable_journals customizable_journals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customizable_journals
    ADD CONSTRAINT customizable_journals_pkey PRIMARY KEY (id);


--
-- Name: delayed_jobs delayed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.delayed_jobs
    ADD CONSTRAINT delayed_jobs_pkey PRIMARY KEY (id);


--
-- Name: design_colors design_colors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.design_colors
    ADD CONSTRAINT design_colors_pkey PRIMARY KEY (id);


--
-- Name: document_journals document_journals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.document_journals
    ADD CONSTRAINT document_journals_pkey PRIMARY KEY (id);


--
-- Name: documents documents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_pkey PRIMARY KEY (id);


--
-- Name: enabled_modules enabled_modules_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enabled_modules
    ADD CONSTRAINT enabled_modules_pkey PRIMARY KEY (id);


--
-- Name: enterprise_tokens enterprise_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enterprise_tokens
    ADD CONSTRAINT enterprise_tokens_pkey PRIMARY KEY (id);


--
-- Name: enumerations enumerations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enumerations
    ADD CONSTRAINT enumerations_pkey PRIMARY KEY (id);


--
-- Name: export_card_configurations export_card_configurations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.export_card_configurations
    ADD CONSTRAINT export_card_configurations_pkey PRIMARY KEY (id);


--
-- Name: hierarchy_paths hierarchy_paths_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hierarchy_paths
    ADD CONSTRAINT hierarchy_paths_pkey PRIMARY KEY (id);


--
-- Name: journals journals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.journals
    ADD CONSTRAINT journals_pkey PRIMARY KEY (id);


--
-- Name: labor_budget_items labor_budget_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.labor_budget_items
    ADD CONSTRAINT labor_budget_items_pkey PRIMARY KEY (id);


--
-- Name: ldap_groups_memberships ldap_groups_memberships_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ldap_groups_memberships
    ADD CONSTRAINT ldap_groups_memberships_pkey PRIMARY KEY (id);


--
-- Name: ldap_groups_synchronized_groups ldap_groups_synchronized_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ldap_groups_synchronized_groups
    ADD CONSTRAINT ldap_groups_synchronized_groups_pkey PRIMARY KEY (id);


--
-- Name: material_budget_items material_budget_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material_budget_items
    ADD CONSTRAINT material_budget_items_pkey PRIMARY KEY (id);


--
-- Name: meeting_content_journals meeting_content_journals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting_content_journals
    ADD CONSTRAINT meeting_content_journals_pkey PRIMARY KEY (id);


--
-- Name: meeting_contents meeting_contents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting_contents
    ADD CONSTRAINT meeting_contents_pkey PRIMARY KEY (id);


--
-- Name: meeting_journals meeting_journals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting_journals
    ADD CONSTRAINT meeting_journals_pkey PRIMARY KEY (id);


--
-- Name: meeting_participants meeting_participants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting_participants
    ADD CONSTRAINT meeting_participants_pkey PRIMARY KEY (id);


--
-- Name: meetings meetings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meetings
    ADD CONSTRAINT meetings_pkey PRIMARY KEY (id);


--
-- Name: member_roles member_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.member_roles
    ADD CONSTRAINT member_roles_pkey PRIMARY KEY (id);


--
-- Name: members members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (id);


--
-- Name: menu_items menu_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_pkey PRIMARY KEY (id);


--
-- Name: message_journals message_journals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.message_journals
    ADD CONSTRAINT message_journals_pkey PRIMARY KEY (id);


--
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: my_projects_overviews my_projects_overviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.my_projects_overviews
    ADD CONSTRAINT my_projects_overviews_pkey PRIMARY KEY (id);


--
-- Name: news_journals news_journals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_journals
    ADD CONSTRAINT news_journals_pkey PRIMARY KEY (id);


--
-- Name: news news_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- Name: plaintext_tokens plaintext_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plaintext_tokens
    ADD CONSTRAINT plaintext_tokens_pkey PRIMARY KEY (id);


--
-- Name: planning_element_type_colors planning_element_type_colors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planning_element_type_colors
    ADD CONSTRAINT planning_element_type_colors_pkey PRIMARY KEY (id);


--
-- Name: principal_roles principal_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.principal_roles
    ADD CONSTRAINT principal_roles_pkey PRIMARY KEY (id);


--
-- Name: project_associations project_associations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_associations
    ADD CONSTRAINT project_associations_pkey PRIMARY KEY (id);


--
-- Name: project_types project_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_types
    ADD CONSTRAINT project_types_pkey PRIMARY KEY (id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: queries queries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.queries
    ADD CONSTRAINT queries_pkey PRIMARY KEY (id);


--
-- Name: rates rates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rates
    ADD CONSTRAINT rates_pkey PRIMARY KEY (id);


--
-- Name: relations relations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relations
    ADD CONSTRAINT relations_pkey PRIMARY KEY (id);


--
-- Name: reportings reportings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reportings
    ADD CONSTRAINT reportings_pkey PRIMARY KEY (id);


--
-- Name: repositories repositories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.repositories
    ADD CONSTRAINT repositories_pkey PRIMARY KEY (id);


--
-- Name: role_permissions role_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_permissions
    ADD CONSTRAINT role_permissions_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: settings settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);


--
-- Name: statuses statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);


--
-- Name: time_entries time_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_entries
    ADD CONSTRAINT time_entries_pkey PRIMARY KEY (id);


--
-- Name: time_entry_journals time_entry_journals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_entry_journals
    ADD CONSTRAINT time_entry_journals_pkey PRIMARY KEY (id);


--
-- Name: timelines timelines_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timelines
    ADD CONSTRAINT timelines_pkey PRIMARY KEY (id);


--
-- Name: tokens tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (id);


--
-- Name: two_factor_authentication_devices two_factor_authentication_devices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.two_factor_authentication_devices
    ADD CONSTRAINT two_factor_authentication_devices_pkey PRIMARY KEY (id);


--
-- Name: types types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id);


--
-- Name: user_passwords user_passwords_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_passwords
    ADD CONSTRAINT user_passwords_pkey PRIMARY KEY (id);


--
-- Name: user_preferences user_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_preferences
    ADD CONSTRAINT user_preferences_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: version_settings version_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.version_settings
    ADD CONSTRAINT version_settings_pkey PRIMARY KEY (id);


--
-- Name: versions versions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.versions
    ADD CONSTRAINT versions_pkey PRIMARY KEY (id);


--
-- Name: watchers watchers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.watchers
    ADD CONSTRAINT watchers_pkey PRIMARY KEY (id);


--
-- Name: webhooks_events webhooks_events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.webhooks_events
    ADD CONSTRAINT webhooks_events_pkey PRIMARY KEY (id);


--
-- Name: webhooks_logs webhooks_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.webhooks_logs
    ADD CONSTRAINT webhooks_logs_pkey PRIMARY KEY (id);


--
-- Name: webhooks_projects webhooks_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.webhooks_projects
    ADD CONSTRAINT webhooks_projects_pkey PRIMARY KEY (id);


--
-- Name: webhooks_webhooks webhooks_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.webhooks_webhooks
    ADD CONSTRAINT webhooks_webhooks_pkey PRIMARY KEY (id);


--
-- Name: wiki_content_journals wiki_content_journals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wiki_content_journals
    ADD CONSTRAINT wiki_content_journals_pkey PRIMARY KEY (id);


--
-- Name: wiki_content_versions wiki_content_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wiki_content_versions
    ADD CONSTRAINT wiki_content_versions_pkey PRIMARY KEY (id);


--
-- Name: wiki_contents wiki_contents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wiki_contents
    ADD CONSTRAINT wiki_contents_pkey PRIMARY KEY (id);


--
-- Name: wiki_pages wiki_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wiki_pages
    ADD CONSTRAINT wiki_pages_pkey PRIMARY KEY (id);


--
-- Name: wiki_redirects wiki_redirects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wiki_redirects
    ADD CONSTRAINT wiki_redirects_pkey PRIMARY KEY (id);


--
-- Name: wikis wikis_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wikis
    ADD CONSTRAINT wikis_pkey PRIMARY KEY (id);


--
-- Name: work_package_journals work_package_journals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_package_journals
    ADD CONSTRAINT work_package_journals_pkey PRIMARY KEY (id);


--
-- Name: work_packages work_packages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_packages
    ADD CONSTRAINT work_packages_pkey PRIMARY KEY (id);


--
-- Name: workflows workflows_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workflows
    ADD CONSTRAINT workflows_pkey PRIMARY KEY (id);


--
-- Name: boards_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_project_id ON public.boards USING btree (project_id);


--
-- Name: changesets_changeset_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX changesets_changeset_id ON public.changes USING btree (changeset_id);


--
-- Name: changesets_repos_rev; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX changesets_repos_rev ON public.changesets USING btree (repository_id, revision);


--
-- Name: changesets_repos_scmid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX changesets_repos_scmid ON public.changesets USING btree (repository_id, scmid);


--
-- Name: changesets_work_packages_ids; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX changesets_work_packages_ids ON public.changesets_work_packages USING btree (changeset_id, work_package_id);


--
-- Name: custom_fields_types_unique; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX custom_fields_types_unique ON public.custom_fields_types USING btree (custom_field_id, type_id);


--
-- Name: custom_values_customized; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX custom_values_customized ON public.custom_values USING btree (customized_type, customized_id);


--
-- Name: delayed_jobs_priority; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX delayed_jobs_priority ON public.delayed_jobs USING btree (priority, run_at);


--
-- Name: documents_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX documents_project_id ON public.documents USING btree (project_id);


--
-- Name: enabled_modules_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX enabled_modules_project_id ON public.enabled_modules USING btree (project_id);


--
-- Name: group_user_ids; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX group_user_ids ON public.group_users USING btree (group_id, user_id);


--
-- Name: index_announcements_on_show_until_and_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_announcements_on_show_until_and_active ON public.announcements USING btree (show_until, active);


--
-- Name: index_attachable_journals_on_attachment_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_attachable_journals_on_attachment_id ON public.attachable_journals USING btree (attachment_id);


--
-- Name: index_attachable_journals_on_journal_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_attachable_journals_on_journal_id ON public.attachable_journals USING btree (journal_id);


--
-- Name: index_attachment_journals_on_journal_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_attachment_journals_on_journal_id ON public.attachment_journals USING btree (journal_id);


--
-- Name: index_attachments_on_author_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_attachments_on_author_id ON public.attachments USING btree (author_id);


--
-- Name: index_attachments_on_container_id_and_container_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_attachments_on_container_id_and_container_type ON public.attachments USING btree (container_id, container_type);


--
-- Name: index_attachments_on_created_on; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_attachments_on_created_on ON public.attachments USING btree (created_on);


--
-- Name: index_auth_sources_on_id_and_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_auth_sources_on_id_and_type ON public.auth_sources USING btree (id, type);


--
-- Name: index_avail_project_statuses_on_rep_project_status_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_avail_project_statuses_on_rep_project_status_id ON public.available_project_statuses USING btree (reported_project_status_id);


--
-- Name: index_available_project_statuses_on_project_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_available_project_statuses_on_project_type_id ON public.available_project_statuses USING btree (project_type_id);


--
-- Name: index_boards_on_last_message_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_boards_on_last_message_id ON public.boards USING btree (last_message_id);


--
-- Name: index_categories_on_assigned_to_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_categories_on_assigned_to_id ON public.categories USING btree (assigned_to_id);


--
-- Name: index_changeset_journals_on_journal_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_changeset_journals_on_journal_id ON public.changeset_journals USING btree (journal_id);


--
-- Name: index_changesets_on_committed_on; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_changesets_on_committed_on ON public.changesets USING btree (committed_on);


--
-- Name: index_changesets_on_repository_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_changesets_on_repository_id ON public.changesets USING btree (repository_id);


--
-- Name: index_changesets_on_repository_id_and_committed_on; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_changesets_on_repository_id_and_committed_on ON public.changesets USING btree (repository_id, committed_on);


--
-- Name: index_changesets_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_changesets_on_user_id ON public.changesets USING btree (user_id);


--
-- Name: index_comments_on_author_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_comments_on_author_id ON public.comments USING btree (author_id);


--
-- Name: index_comments_on_commented_id_and_commented_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_comments_on_commented_id_and_commented_type ON public.comments USING btree (commented_id, commented_type);


--
-- Name: index_cost_objects_on_project_id_and_updated_on; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cost_objects_on_project_id_and_updated_on ON public.cost_objects USING btree (project_id, updated_on);


--
-- Name: index_custom_fields_on_id_and_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_custom_fields_on_id_and_type ON public.custom_fields USING btree (id, type);


--
-- Name: index_custom_fields_projects_on_custom_field_id_and_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_custom_fields_projects_on_custom_field_id_and_project_id ON public.custom_fields_projects USING btree (custom_field_id, project_id);


--
-- Name: index_custom_values_on_custom_field_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_custom_values_on_custom_field_id ON public.custom_values USING btree (custom_field_id);


--
-- Name: index_customizable_journals_on_custom_field_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_customizable_journals_on_custom_field_id ON public.customizable_journals USING btree (custom_field_id);


--
-- Name: index_customizable_journals_on_journal_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_customizable_journals_on_journal_id ON public.customizable_journals USING btree (journal_id);


--
-- Name: index_design_colors_on_variable; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_design_colors_on_variable ON public.design_colors USING btree (variable);


--
-- Name: index_documents_on_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_documents_on_category_id ON public.documents USING btree (category_id);


--
-- Name: index_documents_on_created_on; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_documents_on_created_on ON public.documents USING btree (created_on);


--
-- Name: index_enabled_modules_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_enabled_modules_on_name ON public.enabled_modules USING btree (name);


--
-- Name: index_enumerations_on_id_and_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_enumerations_on_id_and_type ON public.enumerations USING btree (id, type);


--
-- Name: index_enumerations_on_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_enumerations_on_project_id ON public.enumerations USING btree (project_id);


--
-- Name: index_hierarchy_paths_on_path; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_hierarchy_paths_on_path ON public.hierarchy_paths USING btree (path);


--
-- Name: index_hierarchy_paths_on_work_package_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_hierarchy_paths_on_work_package_id ON public.hierarchy_paths USING btree (work_package_id);


--
-- Name: index_journals_on_activity_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_journals_on_activity_type ON public.journals USING btree (activity_type);


--
-- Name: index_journals_on_created_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_journals_on_created_at ON public.journals USING btree (created_at);


--
-- Name: index_journals_on_journable_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_journals_on_journable_id ON public.journals USING btree (journable_id);


--
-- Name: index_journals_on_journable_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_journals_on_journable_type ON public.journals USING btree (journable_type);


--
-- Name: index_journals_on_journable_type_and_journable_id_and_version; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_journals_on_journable_type_and_journable_id_and_version ON public.journals USING btree (journable_type, journable_id, version);


--
-- Name: index_journals_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_journals_on_user_id ON public.journals USING btree (user_id);


--
-- Name: index_ldap_groups_memberships_on_group_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ldap_groups_memberships_on_group_id ON public.ldap_groups_memberships USING btree (group_id);


--
-- Name: index_ldap_groups_memberships_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ldap_groups_memberships_on_user_id ON public.ldap_groups_memberships USING btree (user_id);


--
-- Name: index_ldap_groups_synchronized_groups_on_auth_source_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ldap_groups_synchronized_groups_on_auth_source_id ON public.ldap_groups_synchronized_groups USING btree (auth_source_id);


--
-- Name: index_ldap_groups_synchronized_groups_on_group_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ldap_groups_synchronized_groups_on_group_id ON public.ldap_groups_synchronized_groups USING btree (group_id);


--
-- Name: index_meetings_on_project_id_and_updated_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_meetings_on_project_id_and_updated_at ON public.meetings USING btree (project_id, updated_at);


--
-- Name: index_member_roles_on_inherited_from; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_member_roles_on_inherited_from ON public.member_roles USING btree (inherited_from);


--
-- Name: index_member_roles_on_member_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_member_roles_on_member_id ON public.member_roles USING btree (member_id);


--
-- Name: index_member_roles_on_role_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_member_roles_on_role_id ON public.member_roles USING btree (role_id);


--
-- Name: index_members_on_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_members_on_project_id ON public.members USING btree (project_id);


--
-- Name: index_members_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_members_on_user_id ON public.members USING btree (user_id);


--
-- Name: index_members_on_user_id_and_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_members_on_user_id_and_project_id ON public.members USING btree (user_id, project_id);


--
-- Name: index_menu_items_on_navigatable_id_and_title; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_menu_items_on_navigatable_id_and_title ON public.menu_items USING btree (navigatable_id, title);


--
-- Name: index_menu_items_on_parent_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_menu_items_on_parent_id ON public.menu_items USING btree (parent_id);


--
-- Name: index_message_journals_on_journal_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_message_journals_on_journal_id ON public.message_journals USING btree (journal_id);


--
-- Name: index_messages_on_author_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_messages_on_author_id ON public.messages USING btree (author_id);


--
-- Name: index_messages_on_board_id_and_updated_on; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_messages_on_board_id_and_updated_on ON public.messages USING btree (board_id, updated_on);


--
-- Name: index_messages_on_created_on; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_messages_on_created_on ON public.messages USING btree (created_on);


--
-- Name: index_messages_on_last_reply_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_messages_on_last_reply_id ON public.messages USING btree (last_reply_id);


--
-- Name: index_news_journals_on_journal_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_news_journals_on_journal_id ON public.news_journals USING btree (journal_id);


--
-- Name: index_news_on_author_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_news_on_author_id ON public.news USING btree (author_id);


--
-- Name: index_news_on_created_on; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_news_on_created_on ON public.news USING btree (created_on);


--
-- Name: index_news_on_project_id_and_created_on; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_news_on_project_id_and_created_on ON public.news USING btree (project_id, created_on);


--
-- Name: index_plaintext_tokens_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_plaintext_tokens_on_user_id ON public.plaintext_tokens USING btree (user_id);


--
-- Name: index_principal_roles_on_principal_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_principal_roles_on_principal_id ON public.principal_roles USING btree (principal_id);


--
-- Name: index_principal_roles_on_role_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_principal_roles_on_role_id ON public.principal_roles USING btree (role_id);


--
-- Name: index_project_associations_on_project_a_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_project_associations_on_project_a_id ON public.project_associations USING btree (project_a_id);


--
-- Name: index_project_associations_on_project_b_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_project_associations_on_project_b_id ON public.project_associations USING btree (project_b_id);


--
-- Name: index_projects_on_identifier; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_projects_on_identifier ON public.projects USING btree (identifier);


--
-- Name: index_projects_on_lft; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_projects_on_lft ON public.projects USING btree (lft);


--
-- Name: index_projects_on_project_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_projects_on_project_type_id ON public.projects USING btree (project_type_id);


--
-- Name: index_projects_on_responsible_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_projects_on_responsible_id ON public.projects USING btree (responsible_id);


--
-- Name: index_projects_on_rgt; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_projects_on_rgt ON public.projects USING btree (rgt);


--
-- Name: index_projects_on_work_packages_responsible_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_projects_on_work_packages_responsible_id ON public.projects USING btree (work_packages_responsible_id);


--
-- Name: index_queries_on_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_queries_on_project_id ON public.queries USING btree (project_id);


--
-- Name: index_queries_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_queries_on_user_id ON public.queries USING btree (user_id);


--
-- Name: index_relations_direct_non_hierarchy; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_relations_direct_non_hierarchy ON public.relations USING btree (from_id) WHERE ((((((((hierarchy + relates) + duplicates) + follows) + blocks) + includes) + requires) = 1) AND (hierarchy = 0));


--
-- Name: index_relations_hierarchy_follows_scheduling; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_relations_hierarchy_follows_scheduling ON public.relations USING btree (to_id, hierarchy, follows, from_id) WHERE ((relates = 0) AND (duplicates = 0) AND (blocks = 0) AND (includes = 0) AND (requires = 0) AND (((((((hierarchy + relates) + duplicates) + follows) + blocks) + includes) + requires) > 0));


--
-- Name: index_relations_on_count; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_relations_on_count ON public.relations USING btree (count) WHERE (count = 0);


--
-- Name: index_relations_on_from_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_relations_on_from_id ON public.relations USING btree (from_id);


--
-- Name: index_relations_on_to_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_relations_on_to_id ON public.relations USING btree (to_id);


--
-- Name: index_relations_on_type_columns; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_relations_on_type_columns ON public.relations USING btree (from_id, to_id, hierarchy, relates, duplicates, blocks, follows, includes, requires);


--
-- Name: index_relations_only_hierarchy; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_relations_only_hierarchy ON public.relations USING btree (from_id, to_id, hierarchy) WHERE ((relates = 0) AND (duplicates = 0) AND (follows = 0) AND (blocks = 0) AND (includes = 0) AND (requires = 0));


--
-- Name: index_relations_to_from_only_follows; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_relations_to_from_only_follows ON public.relations USING btree (to_id, follows, from_id) WHERE ((hierarchy = 0) AND (relates = 0) AND (duplicates = 0) AND (blocks = 0) AND (includes = 0) AND (requires = 0));


--
-- Name: index_reportings_on_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_reportings_on_project_id ON public.reportings USING btree (project_id);


--
-- Name: index_reportings_on_reported_project_status_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_reportings_on_reported_project_status_id ON public.reportings USING btree (reported_project_status_id);


--
-- Name: index_reportings_on_reporting_to_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_reportings_on_reporting_to_project_id ON public.reportings USING btree (reporting_to_project_id);


--
-- Name: index_repositories_on_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_repositories_on_project_id ON public.repositories USING btree (project_id);


--
-- Name: index_role_permissions_on_role_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_role_permissions_on_role_id ON public.role_permissions USING btree (role_id);


--
-- Name: index_sessions_on_session_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_sessions_on_session_id ON public.sessions USING btree (session_id);


--
-- Name: index_sessions_on_updated_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_sessions_on_updated_at ON public.sessions USING btree (updated_at);


--
-- Name: index_settings_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_settings_on_name ON public.settings USING btree (name);


--
-- Name: index_statuses_on_is_closed; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_statuses_on_is_closed ON public.statuses USING btree (is_closed);


--
-- Name: index_statuses_on_is_default; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_statuses_on_is_default ON public.statuses USING btree (is_default);


--
-- Name: index_statuses_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_statuses_on_position ON public.statuses USING btree ("position");


--
-- Name: index_time_entries_on_activity_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_time_entries_on_activity_id ON public.time_entries USING btree (activity_id);


--
-- Name: index_time_entries_on_created_on; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_time_entries_on_created_on ON public.time_entries USING btree (created_on);


--
-- Name: index_time_entries_on_project_id_and_updated_on; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_time_entries_on_project_id_and_updated_on ON public.time_entries USING btree (project_id, updated_on);


--
-- Name: index_time_entries_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_time_entries_on_user_id ON public.time_entries USING btree (user_id);


--
-- Name: index_time_entry_journals_on_journal_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_time_entry_journals_on_journal_id ON public.time_entry_journals USING btree (journal_id);


--
-- Name: index_timelines_on_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_timelines_on_project_id ON public.timelines USING btree (project_id);


--
-- Name: index_tokens_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_tokens_on_user_id ON public.tokens USING btree (user_id);


--
-- Name: index_two_factor_authentication_devices_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_two_factor_authentication_devices_on_user_id ON public.two_factor_authentication_devices USING btree (user_id);


--
-- Name: index_types_on_color_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_types_on_color_id ON public.types USING btree (color_id);


--
-- Name: index_user_passwords_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_user_passwords_on_user_id ON public.user_passwords USING btree (user_id);


--
-- Name: index_user_preferences_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_user_preferences_on_user_id ON public.user_preferences USING btree (user_id);


--
-- Name: index_users_on_auth_source_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_auth_source_id ON public.users USING btree (auth_source_id);


--
-- Name: index_users_on_id_and_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_id_and_type ON public.users USING btree (id, type);


--
-- Name: index_users_on_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_type ON public.users USING btree (type);


--
-- Name: index_users_on_type_and_login; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_type_and_login ON public.users USING btree (type, login);


--
-- Name: index_users_on_type_and_status; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_type_and_status ON public.users USING btree (type, status);


--
-- Name: index_version_settings_on_project_id_and_version_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_version_settings_on_project_id_and_version_id ON public.version_settings USING btree (project_id, version_id);


--
-- Name: index_versions_on_sharing; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_versions_on_sharing ON public.versions USING btree (sharing);


--
-- Name: index_watchers_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_watchers_on_user_id ON public.watchers USING btree (user_id);


--
-- Name: index_watchers_on_watchable_id_and_watchable_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_watchers_on_watchable_id_and_watchable_type ON public.watchers USING btree (watchable_id, watchable_type);


--
-- Name: index_webhooks_events_on_webhooks_webhook_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_webhooks_events_on_webhooks_webhook_id ON public.webhooks_events USING btree (webhooks_webhook_id);


--
-- Name: index_webhooks_logs_on_webhooks_webhook_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_webhooks_logs_on_webhooks_webhook_id ON public.webhooks_logs USING btree (webhooks_webhook_id);


--
-- Name: index_webhooks_projects_on_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_webhooks_projects_on_project_id ON public.webhooks_projects USING btree (project_id);


--
-- Name: index_webhooks_projects_on_webhooks_webhook_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_webhooks_projects_on_webhooks_webhook_id ON public.webhooks_projects USING btree (webhooks_webhook_id);


--
-- Name: index_wiki_content_journals_on_journal_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_wiki_content_journals_on_journal_id ON public.wiki_content_journals USING btree (journal_id);


--
-- Name: index_wiki_content_versions_on_updated_on; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_wiki_content_versions_on_updated_on ON public.wiki_content_versions USING btree (updated_on);


--
-- Name: index_wiki_contents_on_author_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_wiki_contents_on_author_id ON public.wiki_contents USING btree (author_id);


--
-- Name: index_wiki_contents_on_page_id_and_updated_on; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_wiki_contents_on_page_id_and_updated_on ON public.wiki_contents USING btree (page_id, updated_on);


--
-- Name: index_wiki_pages_on_parent_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_wiki_pages_on_parent_id ON public.wiki_pages USING btree (parent_id);


--
-- Name: index_wiki_pages_on_wiki_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_wiki_pages_on_wiki_id ON public.wiki_pages USING btree (wiki_id);


--
-- Name: index_wiki_redirects_on_wiki_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_wiki_redirects_on_wiki_id ON public.wiki_redirects USING btree (wiki_id);


--
-- Name: index_work_package_journals_on_journal_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_work_package_journals_on_journal_id ON public.work_package_journals USING btree (journal_id);


--
-- Name: index_work_packages_on_assigned_to_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_work_packages_on_assigned_to_id ON public.work_packages USING btree (assigned_to_id);


--
-- Name: index_work_packages_on_author_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_work_packages_on_author_id ON public.work_packages USING btree (author_id);


--
-- Name: index_work_packages_on_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_work_packages_on_category_id ON public.work_packages USING btree (category_id);


--
-- Name: index_work_packages_on_created_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_work_packages_on_created_at ON public.work_packages USING btree (created_at);


--
-- Name: index_work_packages_on_fixed_version_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_work_packages_on_fixed_version_id ON public.work_packages USING btree (fixed_version_id);


--
-- Name: index_work_packages_on_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_work_packages_on_project_id ON public.work_packages USING btree (project_id);


--
-- Name: index_work_packages_on_project_id_and_updated_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_work_packages_on_project_id_and_updated_at ON public.work_packages USING btree (project_id, updated_at);


--
-- Name: index_work_packages_on_responsible_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_work_packages_on_responsible_id ON public.work_packages USING btree (responsible_id);


--
-- Name: index_work_packages_on_status_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_work_packages_on_status_id ON public.work_packages USING btree (status_id);


--
-- Name: index_work_packages_on_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_work_packages_on_type_id ON public.work_packages USING btree (type_id);


--
-- Name: index_work_packages_on_updated_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_work_packages_on_updated_at ON public.work_packages USING btree (updated_at);


--
-- Name: index_workflows_on_new_status_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_workflows_on_new_status_id ON public.workflows USING btree (new_status_id);


--
-- Name: index_workflows_on_old_status_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_workflows_on_old_status_id ON public.workflows USING btree (old_status_id);


--
-- Name: index_workflows_on_role_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_workflows_on_role_id ON public.workflows USING btree (role_id);


--
-- Name: issue_categories_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_categories_project_id ON public.categories USING btree (project_id);


--
-- Name: messages_board_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX messages_board_id ON public.messages USING btree (board_id);


--
-- Name: messages_parent_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX messages_parent_id ON public.messages USING btree (parent_id);


--
-- Name: news_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX news_project_id ON public.news USING btree (project_id);


--
-- Name: projects_types_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX projects_types_project_id ON public.projects_types USING btree (project_id);


--
-- Name: projects_types_unique; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX projects_types_unique ON public.projects_types USING btree (project_id, type_id);


--
-- Name: time_entries_issue_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX time_entries_issue_id ON public.time_entries USING btree (work_package_id);


--
-- Name: time_entries_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX time_entries_project_id ON public.time_entries USING btree (project_id);


--
-- Name: versions_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX versions_project_id ON public.versions USING btree (project_id);


--
-- Name: watchers_user_id_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX watchers_user_id_type ON public.watchers USING btree (user_id, watchable_type);


--
-- Name: wiki_content_versions_wcid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wiki_content_versions_wcid ON public.wiki_content_versions USING btree (wiki_content_id);


--
-- Name: wiki_contents_page_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wiki_contents_page_id ON public.wiki_contents USING btree (page_id);


--
-- Name: wiki_pages_wiki_id_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX wiki_pages_wiki_id_slug ON public.wiki_pages USING btree (wiki_id, slug);


--
-- Name: wiki_pages_wiki_id_title; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wiki_pages_wiki_id_title ON public.wiki_pages USING btree (wiki_id, title);


--
-- Name: wiki_redirects_wiki_id_title; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wiki_redirects_wiki_id_title ON public.wiki_redirects USING btree (wiki_id, title);


--
-- Name: wikis_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wikis_project_id ON public.wikis USING btree (project_id);


--
-- Name: wkfs_role_type_old_status; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wkfs_role_type_old_status ON public.workflows USING btree (role_id, type_id, old_status_id);


--
-- Name: work_package_journal_on_burndown_attributes; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX work_package_journal_on_burndown_attributes ON public.work_package_journals USING btree (fixed_version_id, status_id, project_id, type_id);


--
-- Name: two_factor_authentication_devices fk_rails_0b09e132e7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.two_factor_authentication_devices
    ADD CONSTRAINT fk_rails_0b09e132e7 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: webhooks_logs fk_rails_551257cdac; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.webhooks_logs
    ADD CONSTRAINT fk_rails_551257cdac FOREIGN KEY (webhooks_webhook_id) REFERENCES public.webhooks_webhooks(id) ON DELETE CASCADE;


--
-- Name: webhooks_events fk_rails_a166925c91; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.webhooks_events
    ADD CONSTRAINT fk_rails_a166925c91 FOREIGN KEY (webhooks_webhook_id) REFERENCES public.webhooks_webhooks(id);


--
-- Name: webhooks_projects fk_rails_d7ea5de5b8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.webhooks_projects
    ADD CONSTRAINT fk_rails_d7ea5de5b8 FOREIGN KEY (webhooks_webhook_id) REFERENCES public.webhooks_webhooks(id);


--
-- Name: webhooks_projects fk_rails_e978b5e3d7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.webhooks_projects
    ADD CONSTRAINT fk_rails_e978b5e3d7 FOREIGN KEY (project_id) REFERENCES public.projects(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

