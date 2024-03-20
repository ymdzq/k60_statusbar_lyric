.class Lcom/android/settings/display/MonochromeModeFragment$1;
.super Landroid/database/ContentObserver;
.source "MonochromeModeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/MonochromeModeFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/MonochromeModeFragment;

.field final synthetic val$globalMonochromeModePref:Lcom/android/settings/display/PaperModePreference;

.field final synthetic val$localMonochromeModePref:Lcom/android/settings/display/PaperModePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/display/MonochromeModeFragment;Landroid/os/Handler;Lcom/android/settings/display/PaperModePreference;Lcom/android/settings/display/PaperModePreference;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/settings/display/MonochromeModeFragment$1;->this$0:Lcom/android/settings/display/MonochromeModeFragment;

    iput-object p3, p0, Lcom/android/settings/display/MonochromeModeFragment$1;->val$globalMonochromeModePref:Lcom/android/settings/display/PaperModePreference;

    iput-object p4, p0, Lcom/android/settings/display/MonochromeModeFragment$1;->val$localMonochromeModePref:Lcom/android/settings/display/PaperModePreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 79
    iget-object p1, p0, Lcom/android/settings/display/MonochromeModeFragment$1;->val$globalMonochromeModePref:Lcom/android/settings/display/PaperModePreference;

    iget-object v0, p0, Lcom/android/settings/display/MonochromeModeFragment$1;->this$0:Lcom/android/settings/display/MonochromeModeFragment;

    .line 80
    invoke-static {v0}, Lcom/android/settings/display/MonochromeModeFragment;->-$$Nest$mgetMonochromeMode(Lcom/android/settings/display/MonochromeModeFragment;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 81
    iget-object p1, p0, Lcom/android/settings/display/MonochromeModeFragment$1;->val$localMonochromeModePref:Lcom/android/settings/display/PaperModePreference;

    iget-object p0, p0, Lcom/android/settings/display/MonochromeModeFragment$1;->this$0:Lcom/android/settings/display/MonochromeModeFragment;

    .line 82
    invoke-static {p0}, Lcom/android/settings/display/MonochromeModeFragment;->-$$Nest$mgetMonochromeMode(Lcom/android/settings/display/MonochromeModeFragment;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
