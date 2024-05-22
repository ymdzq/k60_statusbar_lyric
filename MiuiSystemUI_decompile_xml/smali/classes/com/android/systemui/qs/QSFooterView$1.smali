.class public final Lcom/android/systemui/qs/QSFooterView$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSFooterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSFooterView;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterView$1;->this$0:Lcom/android/systemui/qs/QSFooterView;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterView$1;->this$0:Lcom/android/systemui/qs/QSFooterView;

    .line 5
    sget p1, Lcom/android/systemui/qs/QSFooterView;->$r8$clinit:I

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterView;->setBuildText()V

    .line 9
    return-void
    .line 12
.end method
