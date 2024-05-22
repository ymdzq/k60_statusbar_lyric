.class public Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationGroupingUtil$ResultApplicator;
.implements Lcom/android/systemui/statusbar/NotificationGroupingUtil$ViewComparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;->$r8$classId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationGroupingUtil$1$$ExternalSynthetic$IA0;)V
    .locals 0

    .line 3
    const/4 p1, 0x4

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 4
    const/4 p1, 0x3

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;-><init>(I)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    const p0, 0x1020006    # @android:id/icon

    .line 8
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/internal/widget/CachingIconView;

    .line 15
    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/CachingIconView;->setGrayedOut(Z)V

    .line 19
    :cond_0
    return-void

    .line 22
    :goto_0
    if-eqz p3, :cond_1

    .line 23
    const/16 p0, 0x8

    .line 25
    goto :goto_1

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    :goto_1
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 29
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
    .line 34
.end method

.method public compare(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 8
    move-result p0

    .line 11
    const/16 p1, 0x8

    .line 12
    if-eq p0, p1, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0

    .line 19
    :goto_1
    check-cast p1, Landroid/widget/TextView;

    .line 20
    if-nez p1, :cond_1

    .line 22
    const-string p0, ""

    .line 24
    goto :goto_2

    .line 26
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 27
    move-result-object p0

    .line 30
    :goto_2
    check-cast p2, Landroid/widget/TextView;

    .line 31
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 33
    move-result-object p1

    .line 36
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result p0

    .line 40
    return p0

    .line 41
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
    .line 42
.end method

.method public final isEmpty(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    goto :goto_1

    .line 9
    :pswitch_0
    instance-of p0, p1, Landroid/widget/ImageView;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    check-cast p1, Landroid/widget/ImageView;

    .line 14
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    :goto_0
    return v0

    .line 24
    :goto_1
    if-eqz p1, :cond_2

    .line 25
    check-cast p1, Landroid/widget/TextView;

    .line 27
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 29
    move-result-object p0

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    move-result p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    goto :goto_2

    .line 39
    :cond_1
    move v0, v1

    .line 40
    :cond_2
    :goto_2
    return v0

    .line 41
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
    .line 42
.end method
