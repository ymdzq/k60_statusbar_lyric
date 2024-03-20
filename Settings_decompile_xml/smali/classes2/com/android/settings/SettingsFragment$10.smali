.class Lcom/android/settings/SettingsFragment$10;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mInput:Z

.field private mLastText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsFragment;)V
    .locals 0

    .line 1289
    iput-object p1, p0, Lcom/android/settings/SettingsFragment$10;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 1290
    iput-object p1, p0, Lcom/android/settings/SettingsFragment$10;->mLastText:Ljava/lang/String;

    const/4 p1, 0x1

    .line 1291
    iput-boolean p1, p0, Lcom/android/settings/SettingsFragment$10;->mInput:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1328
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$10;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings/SettingsFragment;->-$$Nest$mupdateSearch(Lcom/android/settings/SettingsFragment;Ljava/lang/String;Z)V

    .line 1329
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$10;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmClickedList(Lcom/android/settings/SettingsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1330
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1331
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1332
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$10;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p0, p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fputmSearchHistoryText(Lcom/android/settings/SettingsFragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1295
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/SettingsFragment$10;->mLastText:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1302
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 1305
    :goto_0
    iget-object p2, p0, Lcom/android/settings/SettingsFragment$10;->mLastText:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/SettingsFragment$10;->mLastText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/2addr p2, p3

    iget-boolean v0, p0, Lcom/android/settings/SettingsFragment$10;->mInput:Z

    xor-int/2addr p2, v0

    if-eqz p2, :cond_2

    .line 1306
    iget-object p2, p0, Lcom/android/settings/SettingsFragment$10;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p2}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchResultItems(Lcom/android/settings/SettingsFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/SettingsFragment$10;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p2}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchResultItems(Lcom/android/settings/SettingsFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/search/SearchResultItem;

    iget p2, p2, Lcom/android/settings/search/SearchResultItem;->type:I

    if-ne p2, p3, :cond_1

    const-string/jumbo p2, "search_no_result"

    .line 1307
    invoke-static {p2}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 1308
    :cond_1
    iget-object p2, p0, Lcom/android/settings/SettingsFragment$10;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p2}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmClickedList(Lcom/android/settings/SettingsFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string/jumbo p2, "search_no_click"

    .line 1309
    invoke-static {p2}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    .line 1313
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/android/settings/SettingsFragment$10;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p2}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmClickedList(Lcom/android/settings/SettingsFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    const-string/jumbo p2, "serach_click_record"

    .line 1314
    invoke-static {p2}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    .line 1316
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/16 v0, 0x8

    if-eqz p2, :cond_4

    .line 1317
    iget-object p2, p0, Lcom/android/settings/SettingsFragment$10;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p2}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchResultListView(Lcom/android/settings/SettingsFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1318
    iget-object p2, p0, Lcom/android/settings/SettingsFragment$10;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p2}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmListView(Lcom/android/settings/SettingsFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 1320
    :cond_4
    iget-object p2, p0, Lcom/android/settings/SettingsFragment$10;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p2}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchResultListView(Lcom/android/settings/SettingsFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1321
    iget-object p2, p0, Lcom/android/settings/SettingsFragment$10;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p2}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmListView(Lcom/android/settings/SettingsFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1323
    :goto_2
    iget-object p2, p0, Lcom/android/settings/SettingsFragment$10;->mLastText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, p3

    iput-boolean p1, p0, Lcom/android/settings/SettingsFragment$10;->mInput:Z

    return-void
.end method
