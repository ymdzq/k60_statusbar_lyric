.class public Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;
.super Ljava/lang/Object;
.source "LitePageLayoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/LitePageLayoutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiteLocalFontModel"
.end annotation


# instance fields
.field private contentUri:Ljava/lang/String;

.field private fontWeight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private isUsing:Z

.field private isVariable:Z

.field private rightFileUnaccessable:Z

.field private title:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetid(Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->id:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisUsing(Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->isUsing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisVariable(Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->isVariable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrightFileUnaccessable(Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->rightFileUnaccessable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettitle(Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->title:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput-object p1, p0, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->id:Ljava/lang/String;

    .line 478
    iput-object p2, p0, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->title:Ljava/lang/String;

    .line 479
    iput-object p3, p0, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->contentUri:Ljava/lang/String;

    .line 480
    iput-boolean p4, p0, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->isUsing:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiteLocalFontModel{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contentUri=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->contentUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isUsing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->isUsing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fontWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->fontWeight:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rightFileUnaccessable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->rightFileUnaccessable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVariable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/display/LitePageLayoutFragment$LiteLocalFontModel;->isVariable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
