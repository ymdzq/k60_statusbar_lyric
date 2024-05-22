.class public final Lcom/android/systemui/qs/QSDetailContent$Adapter$onBindViewHolder$2$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic $item:Lcom/android/systemui/qs/QSDetailContent$ToggleItem;

.field public final synthetic this$0:Lcom/android/systemui/qs/QSDetailContent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSDetailContent$ToggleItem;Lcom/android/systemui/qs/QSDetailContent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailContent$Adapter$onBindViewHolder$2$2;->$item:Lcom/android/systemui/qs/QSDetailContent$ToggleItem;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/QSDetailContent$Adapter$onBindViewHolder$2$2;->this$0:Lcom/android/systemui/qs/QSDetailContent;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetailContent$Adapter$onBindViewHolder$2$2;->$item:Lcom/android/systemui/qs/QSDetailContent$ToggleItem;

    .line 2
    iput-boolean p2, p1, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;->isChecked:Z

    .line 4
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetailContent$Adapter$onBindViewHolder$2$2;->this$0:Lcom/android/systemui/qs/QSDetailContent;

    .line 6
    invoke-static {p1}, Lcom/android/systemui/qs/QSDetailContent;->access$getCallback$p(Lcom/android/systemui/qs/QSDetailContent;)Lcom/android/systemui/qs/QSDetailContent$Callback;

    .line 8
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailContent$Adapter$onBindViewHolder$2$2;->$item:Lcom/android/systemui/qs/QSDetailContent$ToggleItem;

    .line 14
    invoke-interface {p1, p0}, Lcom/android/systemui/qs/QSDetailContent$Callback;->onDetailItemClick(Lcom/android/systemui/qs/QSDetailContent$Item;)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method
