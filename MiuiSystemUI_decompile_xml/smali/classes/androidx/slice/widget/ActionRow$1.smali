.class public final Landroidx/slice/widget/ActionRow$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic val$actionItem:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/slice/widget/ActionRow$1;->val$actionItem:Landroidx/slice/SliceItem;

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
    :try_start_0
    iget-object p0, p0, Landroidx/slice/widget/ActionRow$1;->val$actionItem:Landroidx/slice/SliceItem;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1, p1}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 10
    :goto_0
    return-void
    .line 13
.end method
