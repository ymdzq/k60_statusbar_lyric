.class Lcom/android/settings/display/OldPaperModeFragment$5;
.super Landroid/database/ContentObserver;
.source "OldPaperModeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/OldPaperModeFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/OldPaperModeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/OldPaperModeFragment;Landroid/os/Handler;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment$5;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 238
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment$5;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-static {p1}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$mgetPaperModeSchedulerType(Lcom/android/settings/display/OldPaperModeFragment;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 239
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment$5;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-static {p1}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/OldPaperModeFragment;)Landroid/content/Context;

    move-result-object p1

    const v0, 0xabe9

    invoke-static {p1, v0}, Lcom/android/settings/JobDispatcher;->scheduleJob(Landroid/content/Context;I)V

    .line 240
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment$5;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-static {p1}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/OldPaperModeFragment;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/display/OldPaperModeFragment$5;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-static {v1}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/OldPaperModeFragment;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/display/PaperModeSunTimeService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment$5;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-virtual {p1}, Lcom/android/settings/display/OldPaperModeFragment;->onStopLocated()V

    .line 244
    :goto_0
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment$5;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-static {p1}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/OldPaperModeFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment$5;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-static {p0}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$mgetPaperModeSchedulerType(Lcom/android/settings/display/OldPaperModeFragment;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->startPaperModeAutoTime(Landroid/content/Context;I)V

    return-void
.end method
