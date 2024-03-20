.class public Lcom/android/settings/device/CommonIconListAdapter$ListHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CommonIconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/device/CommonIconListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/settings/device/CommonIconListAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/settings/device/CommonIconListAdapter;Landroid/view/View;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/settings/device/CommonIconListAdapter$ListHolder;->this$0:Lcom/android/settings/device/CommonIconListAdapter;

    .line 55
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x1020006    # @android:id/icon

    .line 56
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/device/CommonIconListAdapter$ListHolder;->icon:Landroid/widget/ImageView;

    const p1, 0x1020016    # @android:id/title

    .line 57
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/device/CommonIconListAdapter$ListHolder;->title:Landroid/widget/TextView;

    return-void
.end method
