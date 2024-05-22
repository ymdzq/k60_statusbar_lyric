.class public final Lcom/android/systemui/controls/management/ControlsEditingActivity$setUpList$1$2$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $adapter:Lcom/android/systemui/controls/management/ControlAdapter;

.field public final synthetic $spanCount:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/ControlAdapter;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$setUpList$1$2$1;->$adapter:Lcom/android/systemui/controls/management/ControlAdapter;

    .line 2
    iput p2, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$setUpList$1$2$1;->$spanCount:I

    .line 4
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$setUpList$1$2$1;->$adapter:Lcom/android/systemui/controls/management/ControlAdapter;

    .line 4
    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2, p1}, Lcom/android/systemui/controls/management/ControlAdapter;->getItemViewType(I)I

    .line 8
    move-result p1

    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    move v0, v1

    .line 14
    :cond_0
    if-nez v0, :cond_1

    .line 15
    iget v1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$setUpList$1$2$1;->$spanCount:I

    .line 17
    :cond_1
    return v1
    .line 19
.end method
