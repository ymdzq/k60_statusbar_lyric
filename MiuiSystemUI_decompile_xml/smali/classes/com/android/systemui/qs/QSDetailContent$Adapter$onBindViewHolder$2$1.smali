.class public final Lcom/android/systemui/qs/QSDetailContent$Adapter$onBindViewHolder$2$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $this_apply:Lcom/android/systemui/qs/QSDetailContent$ToggleItemHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSDetailContent$ToggleItemHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailContent$Adapter$onBindViewHolder$2$1;->$this_apply:Lcom/android/systemui/qs/QSDetailContent$ToggleItemHolder;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailContent$Adapter$onBindViewHolder$2$1;->$this_apply:Lcom/android/systemui/qs/QSDetailContent$ToggleItemHolder;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailContent$ToggleItemHolder;->toggle:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 4
    invoke-virtual {p0}, Landroid/widget/CheckBox;->toggle()V

    .line 6
    return-void
    .line 9
.end method
