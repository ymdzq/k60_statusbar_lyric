.class public Lcom/android/settings/display/LocalFontModel;
.super Ljava/lang/Object;
.source "LocalFontModel.java"


# instance fields
.field private contentUri:Ljava/lang/String;

.field private fontAssert:Ljava/io/File;

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

.field private isMisans:Z

.field private isUsing:Z

.field private isVariable:Z

.field private rightFileUnaccessable:Z

.field private title:Ljava/lang/String;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/settings/display/LocalFontModel;->id:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/android/settings/display/LocalFontModel;->title:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/android/settings/display/LocalFontModel;->contentUri:Ljava/lang/String;

    .line 29
    iput-boolean p4, p0, Lcom/android/settings/display/LocalFontModel;->isUsing:Z

    return-void
.end method


# virtual methods
.method public getContentUri()Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/display/LocalFontModel;->contentUri:Ljava/lang/String;

    return-object p0
.end method

.method public getFontAssert()Ljava/io/File;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/display/LocalFontModel;->fontAssert:Ljava/io/File;

    return-object p0
.end method

.method public getFontWeight()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object p0, p0, Lcom/android/settings/display/LocalFontModel;->fontWeight:Ljava/util/List;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/display/LocalFontModel;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getRightFileUnaccessable()Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/android/settings/display/LocalFontModel;->rightFileUnaccessable:Z

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/display/LocalFontModel;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/settings/display/LocalFontModel;->typeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public isMisans()Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/android/settings/display/LocalFontModel;->isMisans:Z

    return p0
.end method

.method public isUsing()Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/android/settings/display/LocalFontModel;->isUsing:Z

    return p0
.end method

.method public isVariable()Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/android/settings/display/LocalFontModel;->isVariable:Z

    return p0
.end method

.method public setFontAssert(Ljava/io/File;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/settings/display/LocalFontModel;->fontAssert:Ljava/io/File;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/settings/display/LocalFontModel;->title:Ljava/lang/String;

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/display/LocalFontModel;->typeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public setUsing(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/android/settings/display/LocalFontModel;->isUsing:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalFontModel{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/display/LocalFontModel;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/display/LocalFontModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contentUri=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/display/LocalFontModel;->contentUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isUsing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/display/LocalFontModel;->isUsing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fontAssert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/display/LocalFontModel;->fontAssert:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", typeface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/display/LocalFontModel;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isVariable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/display/LocalFontModel;->isVariable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fontWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/display/LocalFontModel;->fontWeight:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
