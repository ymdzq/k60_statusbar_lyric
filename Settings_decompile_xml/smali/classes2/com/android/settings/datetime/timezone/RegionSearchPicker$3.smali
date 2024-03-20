.class Lcom/android/settings/datetime/timezone/RegionSearchPicker$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RegionSearchPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datetime/timezone/RegionSearchPicker;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datetime/timezone/RegionSearchPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/datetime/timezone/RegionSearchPicker;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$3;->this$0:Lcom/android/settings/datetime/timezone/RegionSearchPicker;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 145
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 147
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$3;->this$0:Lcom/android/settings/datetime/timezone/RegionSearchPicker;

    invoke-static {p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->-$$Nest$mhideSoftKeyboard(Lcom/android/settings/datetime/timezone/RegionSearchPicker;)V

    :cond_0
    return-void
.end method
