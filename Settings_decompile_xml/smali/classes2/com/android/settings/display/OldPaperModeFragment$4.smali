.class Lcom/android/settings/display/OldPaperModeFragment$4;
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

    .line 226
    iput-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment$4;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 229
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment$4;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-static {p1}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/OldPaperModeFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/display/OldPaperModeFragment;->isPaperModeEnable(Landroid/content/Context;)Z

    move-result p1

    .line 230
    iget-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment$4;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-static {v0}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$fgetpaperModeEnable(Lcom/android/settings/display/OldPaperModeFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 231
    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment$4;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$mupdatePaperAdjustLevelGroup(Lcom/android/settings/display/OldPaperModeFragment;Ljava/lang/Boolean;)V

    return-void
.end method
