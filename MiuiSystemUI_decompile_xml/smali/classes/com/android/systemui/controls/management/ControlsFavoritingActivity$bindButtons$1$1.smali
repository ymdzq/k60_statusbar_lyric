.class public final Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_apply:Landroid/widget/Button;

.field public final synthetic this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;Landroid/widget/Button;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$1$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$1$1;->$this_apply:Landroid/widget/Button;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$1$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    goto :goto_2

    .line 9
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 10
    iget-object v2, p1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    .line 12
    if-nez v2, :cond_0

    .line 14
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$saveFavorites(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V

    .line 17
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 20
    new-instance v2, Landroid/content/Intent;

    .line 22
    iget-object v3, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$1$1;->$this_apply:Landroid/widget/Button;

    .line 24
    invoke-virtual {v3}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v3

    .line 29
    const-class v4, Lcom/android/systemui/controls/management/ControlsEditingActivity;

    .line 30
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    iget-object v3, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 35
    iget-object v4, v3, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    .line 37
    const-string v5, "android.intent.extra.COMPONENT_NAME"

    .line 39
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 41
    iget-object v4, v3, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->appName:Ljava/lang/CharSequence;

    .line 44
    const-string v5, "extra_app_label"

    .line 46
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 48
    const-string v4, "extra_from_favoriting"

    .line 51
    const/4 v5, 0x1

    .line 53
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    iget-object v4, v3, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->listOfStructures:Ljava/util/List;

    .line 57
    iget-object v3, v3, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->structurePager:Landroidx/viewpager2/widget/ViewPager2;

    .line 59
    if-nez v3, :cond_1

    .line 61
    goto :goto_0

    .line 63
    :cond_1
    move-object v0, v3

    .line 64
    :goto_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 65
    move-result v0

    .line 68
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 72
    check-cast v0, Lcom/android/systemui/controls/management/StructureContainer;

    .line 73
    iget-object v0, v0, Lcom/android/systemui/controls/management/StructureContainer;->structureName:Ljava/lang/CharSequence;

    .line 75
    const-string v3, "extra_structure"

    .line 77
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 79
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 82
    new-array v0, v1, [Landroid/util/Pair;

    .line 84
    invoke-static {p0, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    .line 86
    move-result-object p0

    .line 89
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 90
    move-result-object p0

    .line 93
    invoke-virtual {p1, v2, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 94
    :goto_1
    return-void

    .line 97
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 98
    iget-object p1, p1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->doneButton:Landroid/view/View;

    .line 100
    if-nez p1, :cond_2

    .line 102
    goto :goto_3

    .line 104
    :cond_2
    move-object v0, p1

    .line 105
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 106
    move-result p1

    .line 109
    if-eqz p1, :cond_3

    .line 110
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 112
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 114
    move-result-object p1

    .line 117
    const v0, 0x7f130307    # @string/controls_favorite_toast_no_changes 'Changes not saved'

    .line 118
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 121
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 125
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 128
    new-instance v0, Landroid/content/Intent;

    .line 130
    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$1$1;->$this_apply:Landroid/widget/Button;

    .line 132
    invoke-virtual {v2}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    .line 134
    move-result-object v2

    .line 137
    const-class v3, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;

    .line 138
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 143
    new-array v1, v1, [Landroid/util/Pair;

    .line 145
    invoke-static {v2, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    .line 147
    move-result-object v1

    .line 150
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 151
    move-result-object v1

    .line 154
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 155
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->animateExitAndFinish$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()V

    .line 160
    return-void

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 164
.end method
