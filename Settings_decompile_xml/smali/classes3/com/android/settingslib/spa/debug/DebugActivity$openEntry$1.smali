.class final Lcom/android/settingslib/spa/debug/DebugActivity$openEntry$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DebugActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spa/debug/DebugActivity;->openEntry(Lcom/android/settingslib/spa/framework/common/SettingsEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $intent:Landroid/content/Intent;

.field final synthetic $route:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settingslib/spa/debug/DebugActivity;


# direct methods
.method constructor <init>(Lcom/android/settingslib/spa/debug/DebugActivity;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spa/debug/DebugActivity$openEntry$1;->this$0:Lcom/android/settingslib/spa/debug/DebugActivity;

    iput-object p2, p0, Lcom/android/settingslib/spa/debug/DebugActivity$openEntry$1;->$route:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settingslib/spa/debug/DebugActivity$openEntry$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/settingslib/spa/debug/DebugActivity$openEntry$1;->$intent:Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 240
    invoke-virtual {p0}, Lcom/android/settingslib/spa/debug/DebugActivity$openEntry$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/android/settingslib/spa/debug/DebugActivity$openEntry$1;->this$0:Lcom/android/settingslib/spa/debug/DebugActivity;

    invoke-static {v0}, Lcom/android/settingslib/spa/debug/DebugActivity;->access$getSpaEnvironment(Lcom/android/settingslib/spa/debug/DebugActivity;)Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/spa/framework/common/SpaEnvironment;->getLogger()Lcom/android/settingslib/spa/framework/common/SpaLogger;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/android/settingslib/spa/debug/DebugActivity$openEntry$1;->$route:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenEntry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settingslib/spa/framework/common/LogCategory;->FRAMEWORK:Lcom/android/settingslib/spa/framework/common/LogCategory;

    const-string v3, "DebugActivity"

    .line 241
    invoke-interface {v0, v3, v1, v2}, Lcom/android/settingslib/spa/framework/common/SpaLogger;->message(Ljava/lang/String;Ljava/lang/String;Lcom/android/settingslib/spa/framework/common/LogCategory;)V

    .line 244
    iget-object v0, p0, Lcom/android/settingslib/spa/debug/DebugActivity$openEntry$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settingslib/spa/debug/DebugActivity$openEntry$1;->$intent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
