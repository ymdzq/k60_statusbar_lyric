.class public final synthetic Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/plugins/qs/QSTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/plugins/qs/QSTile;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/plugins/qs/QSTile;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/plugins/qs/QSTile;

    .line 8
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QSTile;->click(Landroid/view/View;)V

    .line 10
    return-void

    .line 13
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/plugins/qs/QSTile;

    .line 14
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QSTile;->secondaryClick(Landroid/view/View;)V

    .line 16
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 20
.end method
