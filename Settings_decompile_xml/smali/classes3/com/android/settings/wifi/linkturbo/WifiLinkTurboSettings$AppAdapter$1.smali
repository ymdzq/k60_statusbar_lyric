.class Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$1;
.super Ljava/lang/Object;
.source "WifiLinkTurboSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;->onBindViewHolder(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;

.field final synthetic val$holder:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$1;->this$1:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;

    iput-object p2, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$1;->val$holder:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$1;->val$holder:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    return-void
.end method
