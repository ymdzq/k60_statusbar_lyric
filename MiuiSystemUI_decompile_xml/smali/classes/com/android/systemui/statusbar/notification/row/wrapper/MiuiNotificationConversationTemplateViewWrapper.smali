.class public final Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationConversationTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public actionsContainer:Landroid/view/View;

.field public final conversationLayout:Lcom/android/internal/widget/ConversationLayout;

.field public expandButton:Landroid/view/View;

.field public expandButtonContainer:Landroid/view/View;

.field public expandButtonInnerContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 2
    check-cast p2, Lcom/android/internal/widget/ConversationLayout;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationConversationTemplateViewWrapper;->conversationLayout:Lcom/android/internal/widget/ConversationLayout;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final getExpandButton()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationConversationTemplateViewWrapper;->expandButtonInnerContainer:Landroid/view/View;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    :cond_0
    return-object p0
    .line 7
.end method

.method public final onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationConversationTemplateViewWrapper;->conversationLayout:Lcom/android/internal/widget/ConversationLayout;

    .line 2
    const v0, 0x10202c5    # @android:id/expanded_menu

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ConversationLayout;->requireViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationConversationTemplateViewWrapper;->expandButton:Landroid/view/View;

    .line 11
    const v0, 0x10202c8    # @android:id/extended

    .line 13
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ConversationLayout;->requireViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationConversationTemplateViewWrapper;->expandButtonContainer:Landroid/view/View;

    .line 20
    const v0, 0x10202cc    # @android:id/feedback

    .line 22
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ConversationLayout;->requireViewById(I)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationConversationTemplateViewWrapper;->expandButtonInnerContainer:Landroid/view/View;

    .line 29
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 31
    const v0, 0x10201ce    # @android:id/actions_container_layout

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationConversationTemplateViewWrapper;->actionsContainer:Landroid/view/View;

    .line 40
    if-nez v0, :cond_0

    .line 42
    const v0, 0x7f0a0092    # @id/actions_container

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationConversationTemplateViewWrapper;->actionsContainer:Landroid/view/View;

    .line 51
    :cond_0
    return-void
    .line 53
.end method

.method public final setContentHeight(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationConversationTemplateViewWrapper;->actionsContainer:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 6
    move-result p1

    .line 9
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationConversationTemplateViewWrapper;->actionsContainer:Landroid/view/View;

    .line 10
    if-nez p2, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 17
    move-result p0

    .line 20
    sub-int/2addr p1, p0

    .line 21
    int-to-float p0, p1

    .line 22
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 23
    :cond_1
    :goto_0
    return-void
    .line 26
.end method

.method public final setVisible(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setVisible(Z)V

    .line 2
    if-eqz p1, :cond_0

    .line 5
    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 13
    return-void
    .line 16
.end method

.method public final shouldClipToRounding(Z)Z
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_2

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationConversationTemplateViewWrapper;->actionsContainer:Landroid/view/View;

    .line 11
    if-eqz p0, :cond_1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 15
    move-result p0

    .line 18
    const/16 p1, 0x8

    .line 19
    if-ne p0, p1, :cond_1

    .line 21
    move p0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move p0, v0

    .line 25
    :goto_0
    if-nez p0, :cond_2

    .line 26
    goto :goto_1

    .line 28
    :cond_2
    move v1, v0

    .line 29
    :goto_1
    return v1
    .line 30
.end method

.method public final updateExpandability(ZLandroid/view/View$OnClickListener;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationConversationTemplateViewWrapper;->conversationLayout:Lcom/android/internal/widget/ConversationLayout;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/ConversationLayout;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    .line 4
    return-void
    .line 7
.end method
