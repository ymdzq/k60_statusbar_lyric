.class public Lcom/android/settings/search/SearchResultItem$Builder;
.super Ljava/lang/Object;
.source "SearchResultItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SearchResultItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private category:Ljava/lang/String;

.field private checkbox:Z

.field private globalSearchIcon:Landroid/graphics/drawable/Drawable;

.field private icon:Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private isGlobalSearch:Z

.field private keywords:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private pkg:Ljava/lang/String;

.field private preferenceKey:Ljava/lang/String;

.field private resource:Ljava/lang/String;

.field private score:D

.field private status:I

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private final type:I


# direct methods
.method static bridge synthetic -$$Nest$fgetcategory(Lcom/android/settings/search/SearchResultItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/SearchResultItem$Builder;->category:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcheckbox(Lcom/android/settings/search/SearchResultItem$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/search/SearchResultItem$Builder;->checkbox:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetglobalSearchIcon(Lcom/android/settings/search/SearchResultItem$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/SearchResultItem$Builder;->globalSearchIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeticon(Lcom/android/settings/search/SearchResultItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/SearchResultItem$Builder;->icon:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetintent(Lcom/android/settings/search/SearchResultItem$Builder;)Landroid/content/Intent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/SearchResultItem$Builder;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisGlobalSearch(Lcom/android/settings/search/SearchResultItem$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/search/SearchResultItem$Builder;->isGlobalSearch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetkeywords(Lcom/android/settings/search/SearchResultItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/SearchResultItem$Builder;->keywords:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpath(Lcom/android/settings/search/SearchResultItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/SearchResultItem$Builder;->path:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpkg(Lcom/android/settings/search/SearchResultItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/SearchResultItem$Builder;->pkg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreferenceKey(Lcom/android/settings/search/SearchResultItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/SearchResultItem$Builder;->preferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresource(Lcom/android/settings/search/SearchResultItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/SearchResultItem$Builder;->resource:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscore(Lcom/android/settings/search/SearchResultItem$Builder;)D
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/settings/search/SearchResultItem$Builder;->score:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetstatus(Lcom/android/settings/search/SearchResultItem$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/search/SearchResultItem$Builder;->status:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsummary(Lcom/android/settings/search/SearchResultItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/SearchResultItem$Builder;->summary:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitle(Lcom/android/settings/search/SearchResultItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/SearchResultItem$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lcom/android/settings/search/SearchResultItem$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/search/SearchResultItem$Builder;->type:I

    return p0
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Lcom/android/settings/search/SearchResultItem$Builder;->type:I

    return-void
.end method


# virtual methods
.method public build()Lcom/android/settings/search/SearchResultItem;
    .locals 1

    .line 189
    new-instance v0, Lcom/android/settings/search/SearchResultItem;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SearchResultItem;-><init>(Lcom/android/settings/search/SearchResultItem$Builder;)V

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/android/settings/search/SearchResultItem$Builder;
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/settings/search/SearchResultItem$Builder;->category:Ljava/lang/String;

    return-object p0
.end method

.method public setCheckbox(Z)Lcom/android/settings/search/SearchResultItem$Builder;
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/android/settings/search/SearchResultItem$Builder;->checkbox:Z

    return-object p0
.end method

.method public setGlobalSearch(Z)Lcom/android/settings/search/SearchResultItem$Builder;
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcom/android/settings/search/SearchResultItem$Builder;->isGlobalSearch:Z

    return-object p0
.end method

.method public setGlobalSearchIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/search/SearchResultItem$Builder;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/settings/search/SearchResultItem$Builder;->globalSearchIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIcon(Ljava/lang/String;)Lcom/android/settings/search/SearchResultItem$Builder;
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/android/settings/search/SearchResultItem$Builder;->icon:Ljava/lang/String;

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Lcom/android/settings/search/SearchResultItem$Builder;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/settings/search/SearchResultItem$Builder;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/android/settings/search/SearchResultItem$Builder;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/settings/search/SearchResultItem$Builder;->keywords:Ljava/lang/String;

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/android/settings/search/SearchResultItem$Builder;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/settings/search/SearchResultItem$Builder;->path:Ljava/lang/String;

    return-object p0
.end method

.method public setPkg(Ljava/lang/String;)Lcom/android/settings/search/SearchResultItem$Builder;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/settings/search/SearchResultItem$Builder;->pkg:Ljava/lang/String;

    return-object p0
.end method

.method public setPreferenceKey(Ljava/lang/String;)Lcom/android/settings/search/SearchResultItem$Builder;
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/settings/search/SearchResultItem$Builder;->preferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public setResource(Ljava/lang/String;)Lcom/android/settings/search/SearchResultItem$Builder;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/settings/search/SearchResultItem$Builder;->resource:Ljava/lang/String;

    return-object p0
.end method

.method public setScore(D)Lcom/android/settings/search/SearchResultItem$Builder;
    .locals 0

    .line 179
    iput-wide p1, p0, Lcom/android/settings/search/SearchResultItem$Builder;->score:D

    return-object p0
.end method

.method public setStatus(I)Lcom/android/settings/search/SearchResultItem$Builder;
    .locals 0

    .line 174
    iput p1, p0, Lcom/android/settings/search/SearchResultItem$Builder;->status:I

    return-object p0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/android/settings/search/SearchResultItem$Builder;
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/settings/search/SearchResultItem$Builder;->summary:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/android/settings/search/SearchResultItem$Builder;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/settings/search/SearchResultItem$Builder;->title:Ljava/lang/String;

    return-object p0
.end method
