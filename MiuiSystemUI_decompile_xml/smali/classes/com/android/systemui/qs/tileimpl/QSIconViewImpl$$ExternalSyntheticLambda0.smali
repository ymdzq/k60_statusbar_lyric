.class public final synthetic Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

.field public final synthetic f$1:Landroid/widget/ImageView;

.field public final synthetic f$2:Lcom/android/systemui/plugins/qs/QSTile$State;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;->f$1:Landroid/widget/ImageView;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 9
    iput-boolean p4, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;->f$3:Z

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;->f$1:Landroid/widget/ImageView;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 6
    iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda0;->f$3:Z

    .line 8
    sget v3, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->$r8$clinit:I

    .line 10
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 12
    return-void
    .line 15
.end method
