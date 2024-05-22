.class public abstract Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule_ProvidesSilentHeaderSubcomponentFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static providesSilentHeaderSubcomponent(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;

    .line 6
    const-string/jumbo v0, "silent header"

    .line 8
    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;->nodeLabel(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;

    .line 11
    move-result-object p0

    .line 14
    const v0, 0x7f130898    # @string/notification_section_header_gentle 'Silent'

    .line 15
    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;->headerText(I)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;

    .line 18
    move-result-object p0

    .line 21
    const-string v0, "android.settings.NOTIFICATION_SETTINGS"

    .line 22
    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;->clickIntentAction(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;

    .line 24
    move-result-object p0

    .line 27
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;->build()Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;

    .line 28
    move-result-object p0

    .line 31
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 32
    return-object p0
    .line 35
.end method
