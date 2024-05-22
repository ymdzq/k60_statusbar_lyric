.class public final synthetic Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardEditorHelper;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardEditorHelper;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 5
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticLambda2;->f$1:Z

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 2
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticLambda2;->f$1:Z

    .line 4
    sget-object v1, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->EXITING:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardEditorHelper;->setEditorState(Lcom/android/keyguard/KeyguardEditorHelper$EditorState;)V

    .line 8
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardEditorHelper;->notificationPanelViewStartAnimation(Z)V

    .line 11
    return-void
    .line 14
.end method
