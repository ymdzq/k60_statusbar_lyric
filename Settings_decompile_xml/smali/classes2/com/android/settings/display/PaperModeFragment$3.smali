.class Lcom/android/settings/display/PaperModeFragment$3;
.super Landroid/database/ContentObserver;
.source "PaperModeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/PaperModeFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/PaperModeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PaperModeFragment;Landroid/os/Handler;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/android/settings/display/PaperModeFragment$3;->this$0:Lcom/android/settings/display/PaperModeFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 269
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment$3;->this$0:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {p1}, Lcom/android/settings/display/PaperModeFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/PaperModeFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/display/PaperModeFragment;->isPaperModeEnable(Landroid/content/Context;)Z

    move-result p1

    .line 270
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment$3;->this$0:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {v0}, Lcom/android/settings/display/PaperModeFragment;->-$$Nest$fgetpaperModeEnable(Lcom/android/settings/display/PaperModeFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 271
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment$3;->this$0:Lcom/android/settings/display/PaperModeFragment;

    invoke-static {p0}, Lcom/android/settings/display/PaperModeFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/PaperModeFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/display/PaperModeFragment;->isPaperModeEnable(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/display/PaperModeFragment;->-$$Nest$mupdatePaperEffectGroup(Lcom/android/settings/display/PaperModeFragment;Ljava/lang/Boolean;)V

    return-void
.end method
