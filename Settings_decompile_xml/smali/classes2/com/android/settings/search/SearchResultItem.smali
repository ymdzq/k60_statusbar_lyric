.class public Lcom/android/settings/search/SearchResultItem;
.super Ljava/lang/Object;
.source "SearchResultItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/SearchResultItem$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/search/SearchResultItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/android/settings/search/SearchResultItem;

.field public static final EMPTY:Lcom/android/settings/search/SearchResultItem;

.field public static final FOOTER:Lcom/android/settings/search/SearchResultItem;

.field public static final SEARCH_CATEGORY:I = 0x3

.field public static final SEARCH_EMPTY:I = 0x1

.field public static final SEARCH_FOOTER:I = 0x4

.field public static final SEARCH_ITEM_NORMAL:I = 0x0

.field public static final SEARCH_SEPARATE_APP:I = 0x2


# instance fields
.field public category:Ljava/lang/String;

.field public checkbox:Z

.field public globalSearchIcon:Landroid/graphics/drawable/Drawable;

.field public group:Ljava/lang/String;

.field public header:Z

.field public icon:Ljava/lang/String;

.field public intent:Landroid/content/Intent;

.field public isGlobalSearch:Z

.field public keywords:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public pkg:Ljava/lang/String;

.field public preferenceKey:Ljava/lang/String;

.field public resource:Ljava/lang/String;

.field public score:D

.field public status:I

.field public summary:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/android/settings/search/SearchResultItem;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/settings/search/SearchResultItem;-><init>(I)V

    sput-object v0, Lcom/android/settings/search/SearchResultItem;->EMPTY:Lcom/android/settings/search/SearchResultItem;

    .line 42
    new-instance v0, Lcom/android/settings/search/SearchResultItem;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/settings/search/SearchResultItem;-><init>(I)V

    sput-object v0, Lcom/android/settings/search/SearchResultItem;->CATEGORY:Lcom/android/settings/search/SearchResultItem;

    .line 44
    new-instance v0, Lcom/android/settings/search/SearchResultItem;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/settings/search/SearchResultItem;-><init>(I)V

    sput-object v0, Lcom/android/settings/search/SearchResultItem;->FOOTER:Lcom/android/settings/search/SearchResultItem;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/settings/search/SearchResultItem;->header:Z

    .line 37
    iput p1, p0, Lcom/android/settings/search/SearchResultItem;->type:I

    return-void
.end method

.method protected constructor <init>(Lcom/android/settings/search/SearchResultItem$Builder;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/settings/search/SearchResultItem;->header:Z

    .line 47
    invoke-static {p1}, Lcom/android/settings/search/SearchResultItem$Builder;->-$$Nest$fgetpkg(Lcom/android/settings/search/SearchResultItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchResultItem;->pkg:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/android/settings/search/SearchResultItem$Builder;->-$$Nest$fgetresource(Lcom/android/settings/search/SearchResultItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchResultItem;->resource:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lcom/android/settings/search/SearchResultItem$Builder;->-$$Nest$fgettitle(Lcom/android/settings/search/SearchResultItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchResultItem;->title:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/android/settings/search/SearchResultItem$Builder;->-$$Nest$fgetcategory(Lcom/android/settings/search/SearchResultItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchResultItem;->category:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/android/settings/search/SearchResultItem$Builder;->-$$Nest$fgetpath(Lcom/android/settings/search/SearchResultItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchResultItem;->path:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/android/settings/search/SearchResultItem$Builder;->-$$Nest$fgetpreferenceKey(Lcom/android/settings/search/SearchResultItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchResultItem;->preferenceKey:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/android/settings/search/SearchResultItem$Builder;->-$$Nest$fgetkeywords(Lcom/android/settings/search/SearchResultItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchResultItem;->keywords:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lcom/android/settings/search/SearchResultItem$Builder;->-$$Nest$fgetsummary(Lcom/android/settings/search/SearchResultItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchResultItem;->summary:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/android/settings/search/SearchResultItem$Builder;->-$$Nest$fgeticon(Lcom/android/settings/search/SearchResultItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchResultItem;->icon:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/android/settings/search/SearchResultItem$Builder;->-$$Nest$fgetcheckbox(Lcom/android/settings/search/SearchResultItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/search/SearchResultItem;->checkbox:Z

    .line 57
    invoke-static {p1}, Lcom/android/settings/search/SearchResultItem$Builder;->-$$Nest$fgetintent(Lcom/android/settings/search/SearchResultItem$Builder;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchResultItem;->intent:Landroid/content/Intent;

    .line 58
    invoke-static {p1}, Lcom/android/settings/search/SearchResultItem$Builder;->-$$Nest$fgetstatus(Lcom/android/settings/search/SearchResultItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/search/SearchResultItem;->status:I

    .line 59
    invoke-static {p1}, Lcom/android/settings/search/SearchResultItem$Builder;->-$$Nest$fgettype(Lcom/android/settings/search/SearchResultItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/search/SearchResultItem;->type:I

    .line 60
    invoke-static {p1}, Lcom/android/settings/search/SearchResultItem$Builder;->-$$Nest$fgetscore(Lcom/android/settings/search/SearchResultItem$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/search/SearchResultItem;->score:D

    .line 61
    invoke-static {p1}, Lcom/android/settings/search/SearchResultItem$Builder;->-$$Nest$fgetisGlobalSearch(Lcom/android/settings/search/SearchResultItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/search/SearchResultItem;->isGlobalSearch:Z

    .line 62
    invoke-static {p1}, Lcom/android/settings/search/SearchResultItem$Builder;->-$$Nest$fgetglobalSearchIcon(Lcom/android/settings/search/SearchResultItem$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/search/SearchResultItem;->globalSearchIcon:Landroid/graphics/drawable/Drawable;

    .line 63
    iget-object p1, p0, Lcom/android/settings/search/SearchResultItem;->path:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/search/SearchResultItem;->summary:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/search/SearchResultItem;->getGroupInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/search/SearchResultItem;->group:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/search/SearchResultItem;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 88
    :cond_0
    iget-wide v0, p1, Lcom/android/settings/search/SearchResultItem;->score:D

    iget-wide p0, p0, Lcom/android/settings/search/SearchResultItem;->score:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lcom/android/settings/search/SearchResultItem;

    invoke-virtual {p0, p1}, Lcom/android/settings/search/SearchResultItem;->compareTo(Lcom/android/settings/search/SearchResultItem;)I

    move-result p0

    return p0
.end method

.method public getGroupInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "/"

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 71
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 74
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    .line 77
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    return-object p1

    .line 78
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "group is null: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/search/SearchResultItem;->title:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
