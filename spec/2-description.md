# 2 Description

The purpose of this document is to be the high-level specification of the Identity & Verification building block (IDV BB), describing its internal architecture, its external interfaces and how it is expected to interact with external building blocks.

The IDV BB creates, manages and uses a digital foundational identity (functional identity is not in scope of this document). As a part of the overall identity system, it can be interfaced with other building blocks in order to realize the complete set of requirements necessary for the identification and verification of the other GovStack building blocks.

The IDV BB is composed of a set of interoperable sub-components/modules dedicated to the management of the foundational national identity and its representation offering different services for ensuring a trusted foundational identity to enable its related use cases.

The guidance from this building block will take note of recognized approaches across the globe which in detail and deployment can vary greatly. These approaches will consider central, federated and distributed (decentralized) models, and will remain flexible to allow for inclusion and updating of existing solutions where possible. This version of the document is focused on central models, leaving federated and distributed models to be explored in a subsequent phase.

This building block may have its own internal workflows and UI together with its own repositories for delivering its functions.
