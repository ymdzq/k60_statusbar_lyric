.class Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WifiLinkTurboSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field button:Lmiuix/slidingwidget/widget/SlidingButton;

.field dayDataTraffic:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field monthDataTraffic:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;Landroid/view/View;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;->this$1:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;

    .line 282
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x1020006    # @android:id/icon

    .line 283
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const p1, 0x1020016    # @android:id/title

    .line 284
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 285
    sget p1, Lcom/android/settings/R$id;->day_data_traffic:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;->dayDataTraffic:Landroid/widget/TextView;

    .line 286
    sget p1, Lcom/android/settings/R$id;->month_data_traffic:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;->monthDataTraffic:Landroid/widget/TextView;

    .line 287
    sget p1, Lcom/android/settings/R$id;->slide_link_turbo:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;->button:Lmiuix/slidingwidget/widget/SlidingButton;

    return-void
.end method
