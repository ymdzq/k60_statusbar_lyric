.class Lcom/android/settings/SettingsFragment$4;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsFragment;->updateHintView(Landroid/service/settings/suggestions/Suggestion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsFragment;

.field final synthetic val$mc:Lmiuix/animation/IFolme;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsFragment;Lmiuix/animation/IFolme;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 385
    iput-object p1, p0, Lcom/android/settings/SettingsFragment$4;->this$0:Lcom/android/settings/SettingsFragment;

    iput-object p2, p0, Lcom/android/settings/SettingsFragment$4;->val$mc:Lmiuix/animation/IFolme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 388
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$4;->val$mc:Lmiuix/animation/IFolme;

    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    invoke-interface {p0, p2}, Lmiuix/animation/ITouchStyle;->onMotionEvent(Landroid/view/MotionEvent;)V

    const/4 p0, 0x0

    return p0
.end method
