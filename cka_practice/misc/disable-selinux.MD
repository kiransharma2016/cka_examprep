---
- name: Test
  hosts: all
  gather_facts: false
  become: true
  tasks:
  - import_role:
      name: selinux
