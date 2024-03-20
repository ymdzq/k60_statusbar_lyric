.class public final Lcom/android/settingslib/notification/EnableZenModeDialog$4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

.field public final synthetic val$row:Landroid/view/View;

.field public final synthetic val$rowId:I

.field public final synthetic val$tag:Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/view/View;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;II)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$4;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    .line 4
    iput-object p2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$4;->val$row:Landroid/view/View;

    .line 6
    iput-object p3, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$4;->val$tag:Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    .line 8
    iput p4, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$4;->val$rowId:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$4;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$4;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    .line 9
    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$4;->val$row:Landroid/view/View;

    .line 11
    iget-object v2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$4;->val$tag:Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    .line 13
    const/4 v3, 0x0

    .line 15
    iget v4, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$4;->val$rowId:I

    .line 16
    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/settingslib/notification/EnableZenModeDialog;->-$$Nest$monClickTimeButton(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/view/View;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;ZI)V

    .line 18
    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$4;->val$tag:Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    .line 21
    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->lines:Landroid/view/View;

    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 25
    return-void

    .line 28
    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$4;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    .line 29
    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$4;->val$row:Landroid/view/View;

    .line 31
    iget-object v2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$4;->val$tag:Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    .line 33
    iget v3, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$4;->val$rowId:I

    .line 35
    invoke-static {p1, v1, v2, v0, v3}, Lcom/android/settingslib/notification/EnableZenModeDialog;->-$$Nest$monClickTimeButton(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/view/View;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;ZI)V

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$4;->val$tag:Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    .line 40
    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->lines:Landroid/view/View;

    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 44
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 48
.end method
