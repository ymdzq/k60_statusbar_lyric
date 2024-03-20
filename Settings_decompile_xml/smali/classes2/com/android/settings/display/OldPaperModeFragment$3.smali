.class Lcom/android/settings/display/OldPaperModeFragment$3;
.super Ljava/lang/Object;
.source "OldPaperModeFragment.java"

# interfaces
.implements Lcom/android/settings/widget/SeekBarPreference$StopTrackingTouchListener;


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
.method constructor <init>(Lcom/android/settings/display/OldPaperModeFragment;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment$3;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopTrackingTouch()V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment$3;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-static {p0}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$mupdateHintPref(Lcom/android/settings/display/OldPaperModeFragment;)V

    return-void
.end method
