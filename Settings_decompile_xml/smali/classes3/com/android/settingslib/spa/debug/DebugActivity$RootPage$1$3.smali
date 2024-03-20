.class public final Lcom/android/settingslib/spa/debug/DebugActivity$RootPage$1$3;
.super Ljava/lang/Object;
.source "DebugActivity.kt"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/PreferenceModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spa/debug/DebugActivity$RootPage$1;->invoke(Landroidx/compose/runtime/Composer;I)V
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

.field private final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;Landroidx/compose/runtime/Composer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/spa/framework/common/SettingsEntry;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            ")V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "List All Slices ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/spa/debug/DebugActivity$RootPage$1$3;->title:Ljava/lang/String;

    const/4 p1, 0x6

    const/4 v0, 0x2

    const-string/jumbo v1, "slices"

    const/4 v2, 0x0

    .line 126
    invoke-static {v1, v2, p2, p1, v0}, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt;->navigator(Ljava/lang/String;ZLandroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/spa/debug/DebugActivity$RootPage$1$3;->onClick:Lkotlin/jvm/functions/Function0;

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

    .line 126
    iget-object p0, p0, Lcom/android/settingslib/spa/debug/DebugActivity$RootPage$1$3;->onClick:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/settingslib/spa/debug/DebugActivity$RootPage$1$3;->title:Ljava/lang/String;

    return-object p0
.end method
