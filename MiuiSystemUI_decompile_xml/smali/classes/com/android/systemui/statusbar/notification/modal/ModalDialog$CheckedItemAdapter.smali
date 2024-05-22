.class public final Lcom/android/systemui/statusbar/notification/modal/ModalDialog$CheckedItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mItemPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    const v0, 0x7f0d0220    # @layout/miuix_appcompat_select_dialog_singlechoice 'res/layout/miuix_appcompat_select_dialog_singlechoice.xml'

    .line 2
    const v1, 0x1020014    # @android:id/text1

    .line 5
    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object p1

    .line 14
    const p2, 0x7f070c2e    # @dimen/modal_dialog_margin_left_right '54.0dp'

    .line 15
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 18
    move-result p1

    .line 21
    iput p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog$CheckedItemAdapter;->mItemPadding:I

    .line 22
    return-void
    .line 24
.end method


# virtual methods
.method public final getItemId(I)J
    .locals 0

    .line 1
    int-to-long p0, p1

    .line 2
    return-wide p0
    .line 3
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    move-result-object p1

    .line 5
    filled-new-array {p1}, [Landroid/view/View;

    .line 6
    move-result-object p2

    .line 9
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 10
    move-result-object p2

    .line 13
    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 14
    move-result-object p2

    .line 17
    const/4 p3, 0x0

    .line 18
    new-array v0, p3, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 19
    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    invoke-interface {p2, v1, v0}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 23
    move-result-object p2

    .line 26
    new-array p3, p3, [Lmiuix/animation/base/AnimConfig;

    .line 27
    invoke-interface {p2, p1, p3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 29
    iget p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog$CheckedItemAdapter;->mItemPadding:I

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 34
    move-result p2

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    .line 38
    move-result p3

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 42
    move-result v0

    .line 45
    invoke-virtual {p1, p0, p2, p3, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 46
    return-object p1
    .line 49
.end method

.method public final hasStableIds()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method
