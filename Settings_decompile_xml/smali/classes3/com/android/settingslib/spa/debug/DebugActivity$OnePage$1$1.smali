.class public final Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1$1;
.super Ljava/lang/Object;
.source "DebugActivity.kt"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/PreferenceModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final enabled:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final onClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settingslib/spa/debug/DebugActivity;Lcom/android/settingslib/spa/framework/common/SettingsPage;Landroidx/compose/runtime/Composer;I)V
    .locals 2

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "open page"

    .line 181
    iput-object v0, p0, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1$1;->title:Ljava/lang/String;

    .line 182
    invoke-static {p1}, Lcom/android/settingslib/spa/debug/DebugActivity;->access$getSpaEnvironment(Lcom/android/settingslib/spa/debug/DebugActivity;)Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/spa/framework/common/SpaEnvironment;->getBrowseActivityClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p2}, Lcom/android/settingslib/spa/framework/common/SettingsPage;->isBrowsable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, p3, v1}, Lcom/android/settingslib/spa/framework/compose/RuntimeUtilsKt;->toState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1$1;->enabled:Landroidx/compose/runtime/State;

    and-int/lit8 p4, p4, 0x70

    or-int/lit8 p4, p4, 0x8

    .line 184
    invoke-static {p1, p2, p3, p4}, Lcom/android/settingslib/spa/debug/DebugActivity;->access$openPage(Lcom/android/settingslib/spa/debug/DebugActivity;Lcom/android/settingslib/spa/framework/common/SettingsPage;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1$1;->onClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public getEnabled()Landroidx/compose/runtime/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object p0, p0, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1$1;->enabled:Landroidx/compose/runtime/State;

    return-object p0
.end method

.method public getOnClick()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object p0, p0, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1$1;->onClick:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1$1;->title:Ljava/lang/String;

    return-object p0
.end method
