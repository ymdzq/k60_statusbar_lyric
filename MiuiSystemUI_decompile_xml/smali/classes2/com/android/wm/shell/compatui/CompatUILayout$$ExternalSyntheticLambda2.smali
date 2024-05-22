.class public final synthetic Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/compatui/CompatUILayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUILayout;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    const v0, 0x7f0a01bb    # @id/camera_compat_hint

    .line 4
    const/4 v1, 0x1

    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    goto :goto_2

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 16
    if-nez p0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/compatui/CompatUILayout;->setViewVisibility(IZ)V

    .line 21
    :goto_0
    return v1

    .line 24
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 25
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    .line 27
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 29
    if-nez p0, :cond_1

    .line 31
    goto :goto_1

    .line 33
    :cond_1
    const p1, 0x7f0a088e    # @id/size_compat_hint

    .line 34
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/compatui/CompatUILayout;->setViewVisibility(IZ)V

    .line 37
    :goto_1
    return v1

    .line 40
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUILayout$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 41
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    .line 43
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 45
    if-nez p0, :cond_2

    .line 47
    goto :goto_3

    .line 49
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/compatui/CompatUILayout;->setViewVisibility(IZ)V

    .line 50
    :goto_3
    return v1

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 54
.end method
