.class Lcom/android/settings/KeySettingsPreviewPreference$1;
.super Ljava/lang/Object;
.source "KeySettingsPreviewPreference.java"

# interfaces
.implements Lcom/android/settings/FramesSequenceAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KeySettingsPreviewPreference;->addPreviewAnimationView(Landroid/view/View;Lcom/android/settings/KeySettingsPreviewPreference$AnimationEnum;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KeySettingsPreviewPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/KeySettingsPreviewPreference;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/android/settings/KeySettingsPreviewPreference$1;->this$0:Lcom/android/settings/KeySettingsPreviewPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationBackgroundChange()V
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/android/settings/KeySettingsPreviewPreference$1;->this$0:Lcom/android/settings/KeySettingsPreviewPreference;

    invoke-static {p0}, Lcom/android/settings/KeySettingsPreviewPreference;->-$$Nest$mchangeBackground(Lcom/android/settings/KeySettingsPreviewPreference;)V

    return-void
.end method

.method public onAnimationPlayed()V
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/android/settings/KeySettingsPreviewPreference$1;->this$0:Lcom/android/settings/KeySettingsPreviewPreference;

    invoke-static {p0}, Lcom/android/settings/KeySettingsPreviewPreference;->-$$Nest$mresetBackground(Lcom/android/settings/KeySettingsPreviewPreference;)V

    return-void
.end method

.method public onAnimationStarted()V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationStopped()V
    .locals 0

    .line 0
    return-void
.end method
