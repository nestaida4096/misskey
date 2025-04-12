<template>
    <PageWithHeader :actions="headerActions" :tabs="headerTabs">
        <div style="overflow: clip;">
            <MkSpacer :contentMax="600" :marginMin="20">
                <div class="_gaps_m znqjceqz">
                    <div v-panel class="about">
                        <div ref="containerEl" class="container">
                            <img src="/client-assets/about-icon.png" alt="" class="icon" draggable="false"/>
                            <div class="misskey">NESTMisskey</div>
                            <div class="version">v2025.4.12</div>
                        </div>
                    </div>
                    <FormSection>
                        <div class="_gaps_s">
                            <FormLink to="https://github.com/nestaida4096/misskey" external>
                                <template #icon><i class="ti ti-code"></i></template>
                                {{ i18n.ts._aboutMisskey.source }} ({{ i18n.ts._aboutMisskey.original }})
                                <template #suffix>GitHub</template>
                            </FormLink>
                        </div>
                    </FormSection>
                </div>
            </MkSpacer>
        </div>
    </PageWithHeader>
</template>
    
<script lang="ts" setup>
    import { nextTick, onBeforeUnmount, ref, useTemplateRef, computed } from 'vue';
    import FormLink from '@/components/form/link.vue';
    import FormSection from '@/components/form/section.vue';
    import { i18n } from '@/i18n.js';
    import { definePage } from '@/page.js';
    
    const headerActions = computed(() => []);

    const headerTabs = computed(() => []);

    definePage(() => ({
	    title: i18n.ts.aboutNESTMisskey,
	    icon: null,
    }));
</script>
    
<style lang="scss" scoped>
    .znqjceqz {
        > .about {
            position: relative;
            border-radius: var(--MI-radius);
    
            > .treasure {
                position: absolute;
                top: 60px;
                left: 0;
                right: 0;
                margin: 0 auto;
                width: min-content;
    
                > .treasureImg {
                    width: 25px;
                    vertical-align: bottom;
                }
            }
    
            > .container {
                position: relative;
                text-align: center;
                padding: 16px;
    
                &.playing {
                    &, * {
                        user-select: none;
                    }
    
                    * {
                        will-change: transform;
                    }
    
                    > .emoji {
                        visibility: visible;
                    }
                }
    
                > .icon {
                    display: block;
                    width: 80px;
                    margin: 0 auto;
                    border-radius: 16px;
                    position: relative;
                    z-index: 1;
                }
    
                > .misskey {
                    margin: 0.75em auto 0 auto;
                    width: max-content;
                    position: relative;
                    z-index: 1;
                }
    
                > .version {
                    margin: 0 auto;
                    width: max-content;
                    opacity: 0.5;
                    position: relative;
                    z-index: 1;
                }
    
                > .emoji {
                    position: absolute;
                    z-index: 1;
                    top: 0;
                    left: 0;
                    visibility: hidden;
    
                    > .emoji {
                        pointer-events: none;
                        font-size: 24px;
                        width: 24px;
                    }
                }
            }
        }
    }
</style>
    
<style lang="scss" module>
    .contributors {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
        grid-gap: 12px;
    }
    
    .contributor {
        display: flex;
        align-items: center;
        padding: 12px;
        background: var(--MI_THEME-buttonBg);
        border-radius: 6px;
    
        &:hover {
            text-decoration: none;
            background: var(--MI_THEME-buttonHoverBg);
        }
    
        &.active {
            color: var(--MI_THEME-accent);
            background: var(--MI_THEME-buttonHoverBg);
        }
    }
    
    .contributorAvatar {
        width: 30px;
        border-radius: 100%;
    }
    
    .contributorUsername {
        margin-left: 12px;
    }
    
    .patronsWithIcon {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
        grid-gap: 12px;
    }
    
    .patronWithIcon {
        display: flex;
        align-items: center;
        padding: 12px;
        background: var(--MI_THEME-buttonBg);
        border-radius: 6px;
    }
    
    .patronIcon {
        width: 24px;
        border-radius: 100%;
    }
    
    .patronName {
        margin-left: 12px;
    }
</style>
    