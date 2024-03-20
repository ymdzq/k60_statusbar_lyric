.class public final Lcom/android/settingslib/spa/debug/DebugActivity$AllPages$1$1;
.super Ljava/lang/Object;
.source "DebugActivity.kt"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/PreferenceModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spa/debug/DebugActivity$AllPages$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final onClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final summary:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;Landroidx/compose/runtime/Composer;)V
    .locals 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {p1}, Lcom/android/settingslib/spa/debug/DebugFormatKt;->debugBrief(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;->getEntries()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/spa/debug/DebugActivity$AllPages$1$1;->title:Ljava/lang/String;

    .line 140
    invoke-static {p1}, Lcom/android/settingslib/spa/debug/DebugFormatKt;->debugArguments(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Lcom/android/settingslib/spa/framework/compose/RuntimeUtilsKt;->toState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/spa/debug/DebugActivity$AllPages$1$1;->summary:Landroidx/compose/runtime/State;

    .line 141
    invoke-virtual {p1}, Lcom/android/settingslib/spa/framework/common/SettingsPage;->getId()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "page/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, v0, p3, v0, p2}, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt;->navigator(Ljava/lang/String;ZLandroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/spa/debug/DebugActivity$AllPages$1$1;->onClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
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

    .line 141
    iget-object p0, p0, Lcom/android/settingslib/spa/debug/DebugActivity$AllPages$1$1;->onClick:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public getSummary()Landroidx/compose/runtime/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object p0, p0, Lcom/android/settingslib/spa/debug/DebugActivity$AllPages$1$1;->summary:Landroidx/compose/runtime/State;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/settingslib/spa/debug/DebugActivity$AllPages$1$1;->title:Ljava/lang/String;

    return-object p0
.end method
